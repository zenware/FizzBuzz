(defn- fizz-buzz [n]
	(cond
		(zero? (rem n 15)) "FizzBuzz"
		(zero? (rem n 3)) "Fizz"
		(zero? (rem n 5)) "Buzz"
		:else (Integer/toString n)))

(defn- fizz-buzz-gen []
	(->> (range 1 Integer/MAX_VALUE)
		(map fizz-buzz)))

(defn- main []
	(doseq [i (vec (take 100 (fizz-buzz-gen)))]
		(println i)))
