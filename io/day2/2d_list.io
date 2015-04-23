List2d := List clone

List2d dim := method(x, y,
    for(i, 0, y,
        self push(List clone)
        for(j, 0, x,
            self at(i) push(nil)
        )
    )
)

List2d set := method(x, y, value,
    self at(y) atPut(x, value)
)

2d := List2d clone

2d dim(4, 5)

2d set(1, 2, "some value")

"dim(4, 5): #{2d}" interpolate println

"""set(1, 2, "some value"): #{2d}""" interpolate println
