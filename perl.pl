#!/usr/bin/env perl
for (my $i = 1; $i < 101; $i++) {
	if ($i % 15 == 0) {
		print "FizzBuzz\n";
	} elsif ($i % 3 == 0) {
		print "Fizz\n";
	} elsif ($i % 5 == 0) {
		print "Buzz\n";
	} else {
		print "$i\n";
	}
}
