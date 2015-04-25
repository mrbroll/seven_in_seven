2d := List2d clone

2d dim(4, 5)

"dim(4, 5):" println
2d print

2d set(1, 2, "some value")
"""set(1, 2, "some value"):""" println
2d print

"get(1, 2): #{2d get(1, 2)}" interpolate println

2d transpose
"2d transpose: " println
2d print
