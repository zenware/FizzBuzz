public class java
{

    public static void main(String[] args)
    {
        System.out.println("Hello World");
    }

    public static void fizzBuzz(int num)
    {
        if (num % 15 == 0) {
            System.out.println("FizzBuzz");
        } else if (num % 5 == 0) {
            System.out.println("Buzz");
        } else if (num % 3 == 0) {
            System.out.println("Fizz");
        } else {
            System.out.println(num);
        }
    }
}
