#!/usr/bin/env ruby
#print the elements of a 16 element array in groups of 4 using each_slice
arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

arr.each_slice(4) do |el|
    print el
end
