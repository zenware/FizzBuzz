extends Node

func fizz_buzz(num):
	if(num % 15 == 0):
		print("FizzBuzz")
	elif(num % 5 == 0):
		print("Buzz")
	elif(num % 3 == 0):
		print("Fizz")
	else:
		print(num)
	

func _ready():
	for i in range(1, 101):
		fizz_buzz(i)
