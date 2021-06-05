#!/usr/bin/env perl6
for 1 .. 100 {
	if ($_ %% 15) {
		say "FizzBuzz";
	} elsif ($_ %% 3) {
		say "Fizz";
	} elsif ($_ %% 5) {
		say "Buzz";
	} else {
		say $_;
	}
}
