let fizz_buzz n =
  if n mod 5 == 0 && n mod 3 == 0 then print_string "FizzBuzz\n"
  else if n mod 5 == 0 then print_string "Buzz\n"
  else if n mod 3 == 0 then print_string "Fizz\n"
  else print_string ((string_of_int n) ^ "\n")
;;

for i = 1 to 100
do
  fizz_buzz i
done
;;


