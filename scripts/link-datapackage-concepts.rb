#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "yaml"

ROOT = Pathname(Dir.pwd)
INDEX_PATH = ROOT.join(ARGV.fetch(0, "index.yaml"))
GRAPH_PATH = ROOT.join(ARGV.fetch(1, "graph.yaml"))

index = YAML.load_file(INDEX_PATH)
graph = YAML.load_file(GRAPH_PATH)
known_concepts = graph.fetch("concepts").keys
entries = index.fetch("entries")
concepts_for = lambda do |entry|
  next [] unless entry["source"] == "datapackage"

  path = entry.fetch("path")
  concepts = []
  concepts << "datapackage-v2" if path == "blog/2024-06-26-v2-release.md" || path == "overview/changelog.md"
  concepts << "data-package-standard" if path == "standard/data-package.mdx"
  concepts << "data-resource-standard" if path == "standard/data-resource.mdx"
  concepts << "table-dialect" if path == "standard/table-dialect.mdx"
  concepts << "table-schema" if path == "standard/table-schema.mdx"
  concepts << "extensions" if path == "standard/extensions.mdx" || path.start_with?("extensions/")
  concepts << "datapackage-v2" if path.start_with?("standard/")
  concepts << "ecosystem-and-governance" if ["overview/software.mdx", "overview/adoption.mdx"].include?(path)
  concepts.select { |concept| known_concepts.include?(concept) }.uniq
end

assignments = entries.each_with_object({}) do |entry, result|
  concepts = (entry["concepts"] || []) + concepts_for.call(entry)
  result[entry.fetch("id")] = concepts.uniq
end

text = INDEX_PATH.read
meta_index = text.index("meta:\n")
raise "index metadata block not found" unless meta_index

body = text[0...meta_index]
prefix, *blocks = body.split(/(?=^  - id:)/)
blocks.map! do |block|
  match = block.match(/^  - id: ([^\n]+)/)
  next block unless match

  id = match[1].strip.delete("\"'")
  concepts = assignments.fetch(id, [])
  rendered = concepts.empty? ? "    concepts: []" : "    concepts: [#{concepts.join(", ")}]"
  block.sub(/^    concepts: \[\].*$/, rendered)
end

INDEX_PATH.write(prefix + blocks.join + text[meta_index..])
puts "linked #{assignments.count { |_, concepts| !concepts.empty? }} entries to graph concepts"
