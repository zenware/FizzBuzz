let fizzbuzz = (i) =>
  switch (i mod 3, i mod 5) {
  | (0, 0) => "FizzBuzz"
  | (0, _) => "Fizz"
  | (_, 0) => "Buzz"
  | _ => string_of_int(i)
  };

for (i in 1 to 100) {
  Js.log(fizzbuzz(i))
};