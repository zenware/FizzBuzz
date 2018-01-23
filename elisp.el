:;exec emacs -Q --script "$0" "$@"

(defun fizzbuzz (n)
  (let  ((v (if (> n 0)
		(fizzbuzz (1- n))
	      "")))
    (concat v "\n" (pcase `(,(% n 3) ,(% n 5))
		     (`(0 0) "FizzBuzz")
		     (`(0 ,_) "Fizz")
		     (`(,_ 0) "Buzz")
		     (`(,_ ,_) (number-to-string n))))))

(princ (fizzbuzz 100))
