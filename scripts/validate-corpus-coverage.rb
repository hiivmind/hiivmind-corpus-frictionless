#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "yaml"

ROOT = Pathname(Dir.pwd)
config_path = ROOT.join(ARGV.fetch(0, "config.yaml"))
index_path = ROOT.join(ARGV.fetch(1, "index.yaml"))
source_root = ROOT.join(".source")

abort "missing config: #{config_path}" unless config_path.file?
abort "missing index: #{index_path}" unless index_path.file?

config = YAML.load_file(config_path)
index = YAML.load_file(index_path)
entries = index.fetch("entries", [])
settings = config.fetch("settings", {})
include_patterns = settings.fetch("include_patterns", ["**/*.md", "**/*.mdx"])
exclude_patterns = settings.fetch("exclude_patterns", [])

failures = []

config.fetch("sources", []).each do |source|
  source_id = source.fetch("id")
  docs_root = source.fetch("docs_root", "").to_s.sub(%r{^\./}, "")
  docs_path = source_root.join(source_id, docs_root)
  unless docs_path.directory?
    failures << "#{source_id}: source directory missing: #{docs_path}"
    next
  end

  discovered = include_patterns.flat_map do |pattern|
    docs_path.glob(pattern).select(&:file?).map do |path|
      path.relative_path_from(docs_path).to_s
    end
  end.uniq.reject do |path|
    exclude_patterns.any? { |pattern| File.fnmatch?(pattern, path, File::FNM_PATHNAME | File::FNM_EXTGLOB) }
  end.sort

  indexed = entries.each_with_object([]) do |entry, paths|
    next unless entry["source"] == source_id
    next if entry["tier"] == "section"

    paths << entry.fetch("path")
  end.uniq.sort

  missing = discovered - indexed
  extra = indexed - discovered
  failures << "#{source_id}: missing index entries: #{missing.join(", ")}" unless missing.empty?
  failures << "#{source_id}: index entries without source files: #{extra.join(", ")}" unless extra.empty?

  puts "#{source_id}: #{discovered.length} source files, #{indexed.length} indexed files, exclusions applied"
end

if failures.empty?
  puts "coverage: OK"
  exit 0
end

warn failures.join("\n")
exit 1
