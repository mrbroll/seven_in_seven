myObject := Object clone

myObject someSlot := method("value of some slot" println)

someSlotMethod := myObject getSlot("someSlot")

someSlotMethod
