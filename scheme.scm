#lang scheme

(define (fizzbuzz i n)
  (display
   (let ((divisbleBy5? (zero? (modulo i 5)))
         (divisblyBy3? (zero? (modulo i 3))))
     (cond ((and divisbleBy5? divisblyBy3?)
            "FizzBuzz")
           (divisbleBy5?
            "Buzz")
           (divisblyBy3?
            "Fizz")
           (else i))))
  (newline)
  (when (< i n)
      (fizzbuzz (+ i 1) n)))

(fizzbuzz 1 100)