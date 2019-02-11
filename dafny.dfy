method FizzBuzz(i: nat)
{
  if i % 15 == 0 {
    print "FizzBuzz\n";
  } else if i % 3 == 0 {
    print "Fizz\n";
  } else if i % 5 == 0 {
    print "Buzz\n";
  } else {
    print i, "\n";
  }
}

method Main() {
  var i := 0;

  while i < 100
    invariant 0 <= i <= 100;
    decreases 100 - i;
  {
    i := i + 1;
    FizzBuzz(i);
  }
}