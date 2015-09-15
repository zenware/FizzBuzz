.class public Jasmin
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
	.limit locals 1
	.limit stack 2
	iconst_0
	istore_0
	
	loop:
	iload_0
	ldc 15
	irem
	ifeq fizzbuzz
	
	iload_0
	ldc 5
	irem
	ifeq buzz
	
	iload_0
	ldc 3
	irem
	ifeq fizz
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_0
	invokevirtual java/io/PrintStream/println(I)V
	goto increment
	
	fizzbuzz:
	ldc "FizzBuzz"
	goto stringprint
	
	fizz:
	ldc "Fizz"
	goto stringprint
	
	buzz:
	ldc "Buzz"
	goto stringprint
	
	stringprint:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	goto increment
	
	increment:
	iinc 0 1
	iload_0
	ldc 100
	if_icmple loop
	
	return
	
.end method
