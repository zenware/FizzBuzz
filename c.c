#include<stdio.h>

void fizzbuzz(int);

int main(void)
{
    for (int i = 0; i <= 100; i++) {
        fizzbuzz(i);
    }

	return 0;
}

void fizzbuzz(int num)
{
    if (num % 3 == 0 && num % 5 == 0) {
        puts("FizzBuzz");
    } else if (num % 3 == 0) {
        puts("Fizz");
    } else if (num % 5 == 0) {
        puts("Buzz");
    } else {
        printf("%d\n", num);
    }
}
