% Clauses to print FizzBuzz for values 1 up to N
fizzBuzzToN(N) :- var(N),
    writeln("Missing argument").
fizzBuzzToN(1) :- writeln(1).
fizzBuzzToN(N) :- N2 is (N - 1),
    fizzBuzzToN(N2),
    fizzBuzz(N).

% Clauses to print FizzBuzz for a specific N
fizzBuzz(N) :- var(N),
    writeln("Missing argument").
fizzBuzz(N) :- 0 is (N mod 15),
    writeln("FizzBuzz").
fizzBuzz(N) :- 0 is (N mod 5),
    writeln("Buzz").
fizzBuzz(N) :- 0 is (N mod 3),
    writeln("Fizz").
fizzBuzz(N) :- writeln(N).

% Print FizzBuzz for values 1 up to 100
?- fizzBuzzToN(100).