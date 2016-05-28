fizzbuzz = fn n ->
  cond do
    rem(n, 15)== 0 -> "FizzBuzz"
    rem(n, 3) == 0 -> "Fizz"
    rem(n, 5) == 0 -> "Buzz"
    true           -> to_string n
  end
end

Enum.each 1..100, &IO.puts(fizzbuzz.(&1))
