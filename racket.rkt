#lang racket

(define (fizzbuzz n)
  (if (= 0 n)
    #t
    (begin (fizzbuzz (- n 1))
           (if (= 0 (remainder n 15))
             (printf "FizzBuzz")
             (if (= 0 (remainder n 5))
               (printf "Buzz")
               (if (= 0 (remainder n 3))
                 (printf "Fizz")
                 (print n)
                 )))
           (printf "\n")
           )))

(fizzbuzz 100)

