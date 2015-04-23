numbers := list(22, 33, 55, 99, 100)

notAllNumbers := list(33, 44, "not a number")

List myAverage := method(
    self map(x, if (x type != "Number", Exception raise("list contains an element that is not a number!")))
    self = self select(type == "Number")
    self average
)

"numbers: #{numbers}" interpolate println
"numbers average: #{numbers myAverage}" interpolate println

"notAllNumbers: #{notAllNumbers}" interpolate println
"notAllNumbers average: #{notAllNumbers myAverage}" interpolate println
