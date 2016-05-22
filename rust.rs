fn fizzbuzz(i: u8) {
  if i % 15 == 0 {
    println!("FizzBuzz");
  } else if i % 3 == 0 {
    println!("Fizz");
  } else if i % 5 == 0 {
    println!("Buzz");
  } else {
    println!("{}", i.to_string());
  }
}

fn main() {
  for i in 1..101 {
    fizzbuzz(i);
  }
}
