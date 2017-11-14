#io language http://iolanguage.org/

FizzBuzz := method(a,
	if (a % 3 and a % 5 == 0, writeln("FizzBuzz"), 
		if (a % 3 == 0, writeln("Fizz"), 
			if (a % 5 == 0, writeln("Buzz"), 
	writeln(a)
			)
		)
	)
)

for (x, 1, 100, 1,
	FizzBuzz(x)
)
