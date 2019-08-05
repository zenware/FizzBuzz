fun main(args: Array<String>) {
    (1..100).forEach {
        println(when (0) {
            it % 3 -> "Fizz${if (it % 5 == 0) "Buzz" else ""}"
            it % 5 -> "Buzz"
            else -> it
        })
    }
}
