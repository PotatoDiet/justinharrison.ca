#!/usr/bin/env ruby

require "filewatcher"

FileWatcher.new(["views", "assets/stylesheets"]).watch do |file|
  # Vim backups mess with the compilation
  next if file[-1, 1] == "~"
  
  lead_slash_pos = file.index("/")
  ext_pos = file.index(".")

  partial_file = file.slice(lead_slash_pos..ext_pos)

  case file.slice(0..lead_slash_pos)
  when "views/"
    `slimrb #{file} > public#{partial_file}html`
  # I need to change the when statement to work with assets/stylesheets/
  # It will fail if I to add another assets compilation rule
  # , like for coffeescript.
  when "assets/"
    `scss -t compressed #{file} > public/assets#{partial_file}css`
  end
end

