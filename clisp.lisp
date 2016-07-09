(defun fizzbuzz (n)
  (cond ((= (mod n 15) 0) "FizzBuzz")
	((= (mod n 3) 0) "Fizz")
	((= (mod n 5) 0) "Buzz")
	(t (write-to-string n))))

(loop for i from 1 to 100
      do (write-line (fizzbuzz i)))
