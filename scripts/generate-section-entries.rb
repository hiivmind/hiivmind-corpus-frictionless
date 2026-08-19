#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "time"
require "yaml"

ROOT = Pathname(Dir.pwd)
CONFIG_PATH = ROOT.join(ARGV.fetch(0, "config.yaml"))
INDEX_PATH = ROOT.join(ARGV.fetch(1, "index.yaml"))
SOURCE_ID = "datapackage"

config = YAML.load_file(CONFIG_PATH)
index = YAML.load_file(INDEX_PATH)
source = config.fetch("sources").find { |item| item.fetch("id") == SOURCE_ID }
raise "source not configured: #{SOURCE_ID}" unless source

section_config = source.fetch("sections")
raise "sections are disabled for #{SOURCE_ID}" unless section_config.fetch("enabled")

min_level = section_config.fetch("min_level", 2)
min_content_lines = section_config.fetch("min_content_lines", 5)
docs_root = source.fetch("docs_root", "").to_s.sub(%r{^\./}, "")
docs_path = ROOT.join(".source", SOURCE_ID, docs_root)
include_patterns = config.fetch("settings").fetch("include_patterns")
exclude_patterns = config.fetch("settings").fetch("exclude_patterns")
now = Time.now.utc.iso8601

source_entries = index.fetch("entries").select { |entry| entry["source"] == SOURCE_ID && entry["tier"] != "section" }
parent_by_path = source_entries.each_with_object({}) { |entry, result| result[entry.fetch("path")] = entry }

slugify = lambda do |text|
  explicit = text[/\{#([^}]+)\}/, 1]
  return explicit if explicit

  text.gsub(/[`*_]/, "").downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-|-$|(?<=-)\-+/, "")
end

clean_text = lambda do |text|
  text.gsub(/!\[([^\]]*)\]\([^)]*\)/, "\\1")
      .gsub(/\[([^\]]+)\]\([^)]*\)/, "\\1")
      .gsub(/`([^`]+)`/, "\\1")
      .gsub(/\s*\{#[^}]+\}/, "")
      .gsub(/<[^>]+>/, "")
      .gsub(/\s+/, " ")
      .strip
end

tokens = lambda do |text|
  text.scan(/\$?[A-Za-z][A-Za-z0-9_.-]{2,}/).reject do |token|
    %w[the and for with from into this that are was were has have].include?(token.downcase)
  end
end

category_for = lambda do |path, parent|
  next parent.fetch("category") if parent
  next "journal" if path.start_with?("blog/") || path == "overview/changelog.md"
  next "reference" if path.start_with?("standard/") || path.start_with?("extensions/")
  next "guide" if path.start_with?("guides/") || path.start_with?("recipes/")

  "navigation"
end

tags_for = lambda do |path, title, parent|
  tags = []
  tags << category_for.call(path, parent)
  tags << path.split("/").first unless path.split("/").first == "overview"
  tags << "v2" if title.match?(/v2|version 2|fieldsMatch|missingValues|\$schema/i) || path.include?("2024-06-26-v2")
  tags.concat(tokens.call(title).map(&:downcase))
  tags.uniq.first(5)
end

section_ids_seen = {}
sections = []
files = include_patterns.flat_map { |pattern| docs_path.glob(pattern).select(&:file?) }.uniq
files.reject! do |path|
  relative = path.relative_path_from(docs_path).to_s
  exclude_patterns.any? { |pattern| File.fnmatch?(pattern, relative, File::FNM_PATHNAME | File::FNM_EXTGLOB) }
end

files.sort.each do |file_path|
  relative_path = file_path.relative_path_from(docs_path).to_s
  parent = parent_by_path.fetch(relative_path) { next }
  lines = file_path.readlines
  headings = []
  lines.each_with_index do |line, index|
    match = line.match(/^(\#{2,6})\s+(.+?)\s*$/)
    headings << { level: match[1].length, title: match[2].strip, index: index } if match
  end

  headings.each_with_index do |heading, heading_index|
    next if heading[:level] < min_level

    boundary = lines.length
    ((heading_index + 1)...headings.length).each do |candidate_index|
      candidate = headings[candidate_index]
      if candidate[:level] <= heading[:level]
        boundary = candidate[:index]
        break
      end
    end

    body = lines[(heading[:index] + 1)...boundary]
    next if body.count { |line| !line.strip.empty? } < min_content_lines
    first_content = body.find { |line| !line.strip.empty? }
    if first_content && first_content.strip.start_with?("#")
      summary = "#{clean_text.call(heading[:title])} section in #{parent.fetch("title")}."
    else
      paragraph = []
      body.each do |line|
        stripped = line.strip
        break if paragraph.any? && stripped.empty?
        next if stripped.empty? || stripped.start_with?("```")

        paragraph << stripped
      end
      summary = clean_text.call(paragraph.join(" "))
      summary = "#{clean_text.call(heading[:title])} section in #{parent.fetch("title")}." if summary.empty?
    end
    summary = "#{summary[0, 240].rstrip}…" if summary.length > 240

    section_title = clean_text.call(heading[:title])
    section_keywords = tokens.call([section_title, body.join(" ")].join(" "))
    section_keywords.concat(%w[fieldsMatch missingValues uniqueKeys categories]) if section_title.match?(/field|missing|categor|schema/i)
    section_keywords = section_keywords.uniq.first(10)
    anchor = slugify.call(heading[:title])
    section_id = "#{parent.fetch("id")}##{anchor}"
    next if section_ids_seen[section_id]
    section_ids_seen[section_id] = true

    sections << {
      "id" => section_id,
      "parent" => parent.fetch("id"),
      "tier" => "section",
      "source" => SOURCE_ID,
      "path" => relative_path,
      "anchor" => anchor,
      "title" => section_title,
      "summary" => summary,
      "tags" => tags_for.call(relative_path, section_title, parent),
      "keywords" => section_keywords,
      "concepts" => [],
      "category" => category_for.call(relative_path, parent),
      "content_type" => "markdown",
      "heading_level" => heading[:level],
      "line_range" => [heading[:index] + 1, boundary],
      "stale" => false,
      "stale_since" => nil,
      "last_indexed" => now
    }
  end
end

existing_entries = index.fetch("entries")
existing_section_ids = existing_entries.select { |entry| entry["tier"] == "section" }.map { |entry| entry.fetch("id") }
file_entry_count = existing_entries.length - existing_section_ids.length
existing_text = INDEX_PATH.read
section_yaml = sections.map do |entry|
  lines = YAML.dump(entry).sub(/\A---\n/, "").lines
  first = lines.shift
  "  - #{first}" + lines.map { |line| "    #{line}" }.join
end.join
section_yaml = section_yaml.gsub(/^(\s+stale_since):\s*$/, "\\1: null")
meta_index = existing_text.index("meta:\n")
raise "index metadata block not found" unless meta_index

body = existing_text[0...meta_index]
first_section = body.index(/^(?:id: .*#|  - id: .*#)/)
body = body[0...first_section] if first_section
meta = existing_text[meta_index..]
meta = meta.sub(/generated_at: ["'][^"']+["']/, "generated_at: \"#{now}\"")
meta = meta.sub(/entry_count: \d+/, "entry_count: #{file_entry_count + sections.length}")
INDEX_PATH.write(body + section_yaml + meta)
puts "added #{sections.length} section entries; total #{file_entry_count + sections.length}"
