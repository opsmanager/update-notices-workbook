#!/usr/bin/env ruby

body = ''
rx = /<%\s*release-note(\((.*)\))?(.*)%>/m

match = rx.match(STDIN.read)

if match && match[3]
  body = match[3].gsub(/^\\#/, '#')
  if match && match[2]
    tags = match[2].split(',')
  end
end

if tags
  puts tags
  puts "------------------------------------------------------------------------------------------"
end
puts body
