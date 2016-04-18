#!/bin/sh

fizz_buzz () {
  if [ `expr $1 % 15` -eq 0 ]
  then
    echo "FizzBuzz"
  elif [ `expr $1 % 5` -eq 0 ]
  then
    echo "Buzz"
  elif [ `expr $1 % 3` -eq 0 ]
  then
    echo "Fizz"
  else
    echo "$1"
  fi
}

A=1

while [ $A -le 100 ]
  do
    fizz_buzz $A
    A=`expr $A + 1`
done

