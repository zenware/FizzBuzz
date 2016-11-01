inline fun Int.divisibleBy(x: Int) = this % x == 0

fun main(args: Array<String>) {
	(1..100).forEach(::fizzBuzz)
}

fun fizzBuzz(n: Int) {
	println(
		when (true) {
			n.divisibleBy(15) -> "FizzBuzz"
			n.divisibleBy(3) -> "Fizz"
			n.divisibleBy(5) -> "Buzz"
			else -> n
		}
	)
}
