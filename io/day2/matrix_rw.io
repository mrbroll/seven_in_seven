matrix := List2d clone

matrix dim(5, 5)

f := File with("test_matrix.txt")

f openForUpdating

f write(matrix toString)
f close

f openForReading

f contents println
