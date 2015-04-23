fib := method(n,
    if(n >= 1,
        if(n > 1,
            fib(n - 1) + fib(n - 2),
            1
        ),
        0
    )
)

"fib(0) is #{fib(0)}" interpolate println
"fib(4) is #{fib(4)}" interpolate println
"fib(-9) is #{fib(-9)}" interpolate println
"fib(8) is #{fib(8)}" interpolate println
