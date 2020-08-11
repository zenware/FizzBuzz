def fizz_buzz($num) {
    om($num % 15 == 0) {
        skriv("FizzBuzz")
    }
    anom($num % 5 == 0) {
        skriv("Buzz")
    }
    anom($num % 3 == 0) {
        skriv("Fizz")
    }
    annars {
        skriv($num)
    }
}

för($i; inom området(1, 101)) {
    fizz_buzz($i)
}
