squareBrackets := method(
    lst := List clone
    call message arguments foreach(
        arg,
        lst push(doMessage(arg))
    )
    lst
)

sbList := ["A", "B", "C"]

writeln(sbList)
