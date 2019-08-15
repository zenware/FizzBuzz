fizzbuzz = fn 
  n when rem(n, 15) == 0 -> "FizzBuzz"
  n when rem(n,  3) == 0 -> "Fizz"
  n when rem(n,  5) == 0 -> "Buzz"
  n                      -> to_string n
end

1..100 |> Enum.map(fizzbuzz) |> Enum.each(&IO.puts/1)
