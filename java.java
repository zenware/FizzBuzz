public class java
{

    public static void main(String[] args)
    {
        for (int i=1; i<=100; i++) {
            fizzBuzz(i);
        }
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
