<?php

function fizzbuzz($num) {
    if ($num % 15 == 0) {
        print("FizzBuzz" . PHP_EOL);
    } else if ($num % 5 == 0) {
        print("Buzz" . PHP_EOL);
    } else if ($num % 3 == 0) {
        print("Fizz" . PHP_EOL);
    } else {
        print($num . PHP_EOL);
    }
}

for ($i = 0; $i <=100; $i++)
{
    fizzbuzz($i);
}
