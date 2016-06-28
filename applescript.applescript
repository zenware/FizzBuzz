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

set res to ""
repeat with i from 1 to 100
    -- AppleScript support for command line scripting is terrible, so all
    -- results have to be put into a single string to be printed to STDOUT
    set res to res & fizzbuzz(i) & "\n"
end repeat
