fizzBuzz(num) {
	if (num % 3 == 0) {
       print("Fizz\n")
    } else if (num % 5 == 0) {
        print("Buzz\n")
    } else if (num % 15 == 0) {
         print("FizzBuzz\n")
    } else {
         printf("%d\n", num)
    }
}

main() {
    for(new i = 0;i <= 100;i++)
    {
        fizzBuzz(i)
    }
    return 1;
}

