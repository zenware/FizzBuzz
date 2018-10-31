fizzbuzz(n) {
	extrn putchar;
	if (n % 3 == 0) putchar('Fizz');
	if (n % 5 == 0) putchar('Buzz');
	if ((n % 3) && (n % 5)) putchar(n + '0');
	putchar('*n');
}

main( ) {
        extern fizzbuzz;
	auto i;
	i = 1;
	while (i <= 100) fizzbuzz(i++);
}
