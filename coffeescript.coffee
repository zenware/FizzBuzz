fizz_buzz = (i) ->
    if i % 15 == 0
        return 'FizzBuzz'
    else if i % 5 == 0
        return 'Buzz'
    else if i % 3 == 0
        return 'Fizz'
    else
        return i

console.log fizz_buzz num for num in [1..100]
