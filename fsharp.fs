let fizzbuzz (n : int) : string =
  match n % 3, n % 5 with
  | 0, 0 -> "FizzBuzz"
  | 0, _ -> "Fizz"
  | _, 0 -> "Buzz"
  | _, _ -> string n

for n in 1 .. 100 do
  printfn "%s" (fizzbuzz n)
