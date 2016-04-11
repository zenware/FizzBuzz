#!/usr/bin/env python

from __future__ import print_function

try:
    range = xrange
except NameError:  # Python2's xrange is already just range in Python3.
    pass


def fizz_buzz(num):
    if num % 15 == 0:
        print("FizzBuzz")
    elif num % 5 == 0:
        print("Buzz")
    elif num % 3 == 0:
        print("Fizz")
    else:
        print(num)


for i in range(1, 101):
    fizz_buzz(i)
