import std.stdio;

int main() {
  foreach(i; 1..101) {
    fizzbuzz(i);
  } return 0;
}

void fizzbuzz(int i) {
  if (i % 15 == 0)
    writeln("FizzBuzz");
  else if (i % 3 == 0)
    writeln("Fizz");
  else if (i % 5 == 0)
    writeln("Buzz");
  else
    writeln(i);
}
