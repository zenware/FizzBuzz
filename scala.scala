object Scala extends App {
  
  val fizzBuzz = Stream.from(1).map {
    case n if n % 15 == 0 => "FizzBuzz"
    case n if n % 5  == 0 => "Buzz"
    case n if n % 3  == 0 => "Fizz"
    case n                => n
  }
  
  println(fizzBuzz.take(100).mkString("\n"))
}
