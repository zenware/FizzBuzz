using System;

namespace FizzBuzz
{
    public class Program
    {
        public static void FizzBuzz(int number)
        {
            if (number%3 == 0 && number%5 == 0)
            {
                Console.WriteLine("FizzBuzz");
            }
            else if (number%3 == 0)
            {
                Console.WriteLine("Fizz");
            }
            else if (number%5 == 0)
            {
                Console.WriteLine("Buzz");
            }
            else
            {
                Console.WriteLine(number);
            }
        }

        private static void Main(string[] args)
        {
            for (int i = 0; i <= 100; i++)
            {
                FizzBuzz(i);
            }
        }
    }
}
