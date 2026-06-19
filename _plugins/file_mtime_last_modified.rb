# frozen_string_literal: true

# Use the file's modification time for last_modified_at instead of git history.
# jekyll-last-modified-at reads the last commit date, so uncommitted edits never update.
Jekyll::Hooks.register %i(posts pages documents), :pre_render do |item|
  path = File.exist?(item.path) ? item.path : File.join(item.site.source, item.path)
  next unless File.exist?(path)

  item.data["last_modified_at"] = File.mtime(path)
end
