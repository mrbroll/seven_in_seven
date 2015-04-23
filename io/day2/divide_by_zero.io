div := Number getSlot("/")

Number / := method(n, if(n == 0, 0, self div(n)))

"100 / 10 = #{100 / 10}" interpolate println
"100/ 0 = #{100 / 0}" interpolate println
