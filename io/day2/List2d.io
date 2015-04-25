List2d := List clone

List2d dim := method(x, y,
    self empty
    self maxX := x
    self maxY := y
    for(i, 0, y - 1,
        l := List clone
        self push(l)
        for(j, 0, x - 1,
            l push("#{j},#{i}" interpolate)
        )
    )
)

List2d get := method(x, y,
    self at(y) at(x)
)

List2d set := method(x, y, value,
    self at(y) atPut(x, value)
)

List2d transpose := method(
    orig := self clone
    self dim(orig maxY, orig maxX)
    for (i, 0, (orig maxY) - 1,
        for(j, 0, (orig maxX) - 1,
            self set(j, i, orig get(i, j))
        )
    )
)

List2d toString := method(
    str := Sequence clone
    self foreach(row,
        row foreach(item,
            str appendSeq("#{item} " interpolate)
        )
        str appendSeq("\n")
    )
)

List2d print := method(
    self toString print
)

