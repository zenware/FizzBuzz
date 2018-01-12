for (var i = 1; i <= 100; i++)
{
    if (i % 15 == 0) {
        show_debug_message("FizzBuzz");
    } else if (i % 5 == 0) {
        show_debug_message("Buzz");
    } else if (i % 3 == 0) {
        show_debug_message("Fizz");
    } else {
        show_debug_message(i);
    }
}
