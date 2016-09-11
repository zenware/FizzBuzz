public fun main(args: Array<String>) {
	for (i in 1..100) {
		fizzBuzz(i)
	}
}

fun fizzBuzz(n: Int) {
	val divisibleBy3 = n % 3 == 0
	val divisibleBy5 = n % 5 == 0

	if (divisibleBy3 && divisibleBy5) {
		println("FizzBuzz")
	} else if (divisibleBy5) {
		println("Buzz")
	} else if (divisibleBy3) {
		println("Fizz")
	} else {
		println(n)
	}
}
