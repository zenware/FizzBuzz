object Scala {

  def main(args: Array[String]): Unit = {
    for (var i <- 1 to 100) {
      fizzBuzz(i);
    }
  }

  def fizzBuzz(num: Int): Unit = {
    if (num % 15 == 0) {
      println("FizzBuzz");
    } else if (num % 5 == 0) {
      println("Buzz");
    } else if (num % 3 == 0) {
      println("Fizz");
    } else {
      println(num);
    }
  }
}