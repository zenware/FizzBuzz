import strutils

proc fizzbuzz(n: int): string =
  if n mod 15 == 0:
    result = "FizzBuzz"
  elif n mod 3 == 0:
    result = "Fizz"
  elif n mod 5 == 0:
    result = "Buzz"
  else:
    result = n.intToStr

for i in 0..100:
  echo fizzbuzz(i)

