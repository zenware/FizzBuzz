#!/usr/bin/osascript

on fizzbuzz(i)
    if i mod 15 is 0 then
        return "FizzBuzz"
    else if i mod 3 is 0 then
        return "Fizz"
    else if i mod 5 is 0 then
        return "Buzz"
    else
        return i as string
    end if
end fizzbuzz

repeat with i from 1 to 100
    log fizzbuzz(i) -- Print to stdout
end repeat
