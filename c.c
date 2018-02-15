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
    int printed = 0;
	
    if (num % 3 == 0) {
	    printf("Fizz");
	    printed = 1;
    }
    if (num % 5 == 0) {
	    printf("Buzz");
	    printed = 1;
    }
	
    if (printed) {
	    printf("\n");
	    return;
    } else {
	    printf("%d\n", num);
	    return;
    }
}
