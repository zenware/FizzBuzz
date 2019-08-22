# run with `awk -f awk.awk`
BEGIN{
	for (i = 1; i <= 100; i++) {
		if (i % 15 == 0) print("FizzBuzz")
		else if (i % 5 == 0) print("Buzz")
		else if (i % 3 == 0) print("Fizz")
		else print(i)
	}
	exit(1)
}
