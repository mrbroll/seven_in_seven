Builder := Object clone
Builder indent := Sequence clone
Builder forward := method(
    writeln(self indent, "<", call message name, ">")
    oldIndent := self indent clone
    self indent appendSeq("  ")
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(self indent, content))
    )
    self indent := oldIndent
    writeln(self indent, "</", call message name, ">")
)

Builder ul(
    li("Io")
    li("Lua")
    li("JavaScript")
)
