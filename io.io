#io language http://iolanguage.org/

FizzBuzz := method(a,
	if (a % 3 == 0) and (a % 5 == 0) then (
    	writeln("FizzBuzz")
    )
    if (a % 3 == 0) then (
    	writeln("Fizz")
    )
    if (a % 5 == 0) then (
    	writeln("Buzz")
    )
    writeln(a)
)

for (x, 1, 100, 1,
	FizzBuzz(x)
)
