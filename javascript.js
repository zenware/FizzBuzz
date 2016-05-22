function fizz_buzz(num)
{
    if (num % 15 == 0) {
        console.log("FizzBuzz");
    } else if (num % 5 == 0) {
        console.log("Buzz");
    } else if (num % 3 == 0) {
        console.log("Fizz");
    } else {
        console.log(num);
    }
}

for (var i = 1; i <= 100; i++)
{
    fizz_buzz(i);
}
