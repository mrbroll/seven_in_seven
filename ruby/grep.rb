#!/usr/bin/env ruby
#simple grep to print the lines
#of a file having any occurrences
#of a phrase anywhere in that line

#we don't care about argument validation

file = ARGV[0]
phrase = ARGV[1]

puts "file: #{file}"
puts "phrase: #{phrase}"

lineNum = 1 #line numbers usually start at 1 in text editors
regex = Regexp.new("^.*#{Regexp.escape(phrase)}.*$")
File.open(file, 'r') do |fd|
    while line = fd.gets
        puts "match at line: #{lineNum}" if regex.match(line) != nil
        lineNum = lineNum + 1
    end
end

