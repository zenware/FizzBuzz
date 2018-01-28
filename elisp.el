:;exec emacs -Q --script "$0" "$@"

(defun fizzbuzz (n)
  (append (if (> n 1) (fizzbuzz (1- n)))
          (list (pcase `(,(% n 3) ,(% n 5))
              (`(0 0) "FizzBuzz")
              (`(0 ,_) "Fizz")
              (`(,_ 0) "Buzz")
              (`(,_ ,_) (number-to-string n))))))

(princ (mapconcat 'identity (mapcar (lambda (x) (concat x "\n")) (fizzbuzz 100)) ""))
