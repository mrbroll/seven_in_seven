#!/usr/bin/env ruby
#print the contents of a 16 element array 4 at a time using each
arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
buf = []
arr.each do |x|
    i = arr.index(x)
    puts "#{arr[i - 3]}, #{arr[i - 2]}, #{arr[i - 1]}, #{x}" if (i > 0) and ((i + 1) % 4 == 0)
end
