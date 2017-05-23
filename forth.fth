#! /usr/bin/env gforth

: FIZZBUZZ ( -- )
  1
  101 1 ?DO
    DUP 15 MOD 0= IF
      ." FizzBuzz" CR
    ELSE
      DUP 3 MOD 0= IF
        ." Fizz" CR
      ELSE
        DUP 5 MOD 0= IF
          ." Buzz" CR
        ELSE
          DUP 1 .r CR
        THEN
      THEN
    THEN
    1+
  LOOP
  DROP
  ;
FIZZBUZZ
BYE
