OperatorTable addAssignOperator(":", "atPutAttribute")
Map atPutAttribute := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)
curlyBrackets := method(
    r := Map clone
    call message arguments foreach(
        arg, 
        r doMessage(arg)
    )
    r
)
Map toAttributeString := method(
    self map(
        pair,
        pair at(0) asMutable appendSeq("=\"{pair at(1)}\"" interpolate)
    ) reduce(a, b, a asMutable appendSeq(" #{b}" interpolate))
)
writeln({"a": "valueA", "b": "valueB"} toAttributeString())
Builder := Object clone
Builder indent := Sequence clone
Builder forward := method(
    arg0 := call evalArgAt(0)
    attributes := Sequence clone
    if (arg0 type == "Map", attributes = arg0 toAttributeString, attributes = "")
    writeln(self indent, "<", call message name, " ", attributes, ">")
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
    {"style":"something"},
    li("this"),
    li("is"),
    li("a"),
    li("list")
)
