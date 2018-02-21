for (var i = 1; i <= 100; i++)
{
    if (i % 15 == 0) {
        draw_text(x,i*12.2,"FizzBuzz");
    } else if (i % 5 == 0) {
        draw_text(x,i*12.2,"Buzz");
    } else if (i % 3 == 0) {
        draw_text(x,i*12.2,"Fizz");
    } else {
        draw_text(x,i*12.2,i);
    }
}

