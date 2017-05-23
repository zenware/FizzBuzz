void fizzBuzz(int foo) {
  if (foo % 15 == 0) {
    print("FizzBuzz");
  } else if (foo % 5 == 0) {
    print("Buzz");
  } else if (foo % 3 == 0) {
    print("Fizz");
  } else {
    print(foo);
  }
}

void main() {
  for (var i = 1; i <= 100; i++) {
    fizzBuzz(i);
  }
}
