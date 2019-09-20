class Haxe {
    static function main() {
        for (num in 0...100)
        {
            if (num % 15 == 0) {
                trace("FizzBuzz");
            } else if (num % 5 == 0) {
                trace("Buzz");
            } else if (num % 3 == 0) {
            	trace("Fizz");   
            } else {
                trace(num);
            }
        }
    }
}
