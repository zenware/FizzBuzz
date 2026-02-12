foreach (var i in Enumerable.Range(1, 100))
    Console.WriteLine(FizzBuzz(i));

static string FizzBuzz(int number) =>
    (number % 3, number % 5) switch 
    {
        (0, 0) => "FizzBuzz",
        (0, _) => "Fizz",
        (_, 0) => "Buzz",
        _ => number.ToString(),
    };
