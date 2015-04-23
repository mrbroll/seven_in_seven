2dNumbers := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))

2dSums := 2dNumbers map(l, l reduce(+))

sum := 2dSums reduce(+)

"2d array: #{2dNumbers}" interpolate println
"sum: #{sum}" interpolate println
