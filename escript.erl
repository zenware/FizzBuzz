#!/usr/bin/env escript

main(_) ->
    fizz_buzz(0, 101).

fizz_buzz(Max, Max) ->
    ok;
fizz_buzz(N, Max) when N rem 15 == 0 ->
    io:format("FizzBuzz~n"),
    fizz_buzz(N+1, Max);
fizz_buzz(N, Max) when N rem 3 == 0 ->
    io:format("Fizz~n"),
    fizz_buzz(N+1, Max);
fizz_buzz(N, Max) when N rem 5 == 0->
    io:format("Buzz~n"),
    fizz_buzz(N+1, Max);
fizz_buzz(N, Max) ->
    io:format("~p~n", [N]),
    fizz_buzz(N+1, Max).

