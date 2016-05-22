:- module mercury. %% Mercury requires that the module name is the same as the
                   %% file name.

:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module int, string, bool.

:- func fizz(int) = bool.
:- func buzz(int) = bool.
:- func fizzbuzz(int, bool, bool) = string.


fizz(N) = (if N mod 3 = 0 then yes else no).
buzz(N) = (if N mod 5 = 0 then yes else no).

fizzbuzz(_, yes, yes) = "FizzBuzz".
fizzbuzz(_, yes, no)  = "Fizz".
fizzbuzz(_, no, yes)  = "Buzz".
fizzbuzz(N, no, no)   = from_int(N).

:- pred print_fizzbuzz(int::in, int::in, io::di, io::uo) is det.
print_fizzbuzz(N, Upper, !IO) :-
    io.write_string(fizzbuzz(N, fizz(N), buzz(N)), !IO),
       io.nl(!IO),
          (if N < Upper
           then print_fizzbuzz(N + 1, Upper, !IO)
           else !:IO = !.IO).  %% Do not change the IO state. This is a no-op,
                               %% but since `if` clauses must have an `else`, we
                               %% need to return something.

main(!IO) :- print_fizzbuzz(1, 100, !IO).
