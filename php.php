<?php

function fizzbuzz($num) {
    print match (0) {
        $num % 15 => "FizzBuzz" . PHP_EOL,
        $num % 3  => "Fizz" . PHP_EOL,
        $num % 5  => "Buzz" . PHP_EOL,
        default => $num . PHP_EOL,
    };
}

for ($i = 0; $i <=100; $i++)
{
    fizzbuzz($i);
}
