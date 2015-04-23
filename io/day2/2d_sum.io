2dNumbers := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))

sum := 2dNumbers map(l, l reduce(+)) reduce(+)

"2d array: #{2dNumbers}" interpolate println
"sum: #{sum}" interpolate println
