// Author: Jinwei Zhao
// Date: 2015.4.9

package main

import (
	"fmt"
)

func fizzbuzz(num int) {
	if num%3 == 0 {
		fmt.Println("Fizz")
	} else if num%5 == 0 {
		fmt.Println("Buzz")
	} else if num%3 == 0 && num%5 == 0 {
		fmt.Println("FizzBuzz")
	} else {
		fmt.Println(num)
	}
}

func main() {
	for i := 1; i < 100; i++ {
		fizzbuzz(i)
	}
}
