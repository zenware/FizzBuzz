#include <iostream>

void fizzbuzz(int);

int main(void)
{
    for (int i = 0; i <= 100; i++) {
        fizzbuzz(i);
    }
}

void fizzbuzz(int num)
{
    if (num % 3 == 0) {
        std::cout << "Fizz" << std::endl;
    } else if (num % 5 == 0) {
        std::cout << "Buzz" << std::endl;
    } else if (num % 3 == 0 && num % 5 == 0) {
        std::cout << "FizzBuzz" << std::endl;
    } else {
        std::cout << num << std::endl;
    }
}
