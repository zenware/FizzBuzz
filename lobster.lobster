// FizzBuzz in [lobster](https://aardappel.github.io/lobster)

def fizz(x):
    if x % 15 == 0:
        print "FizzBuzz"
    elif x % 5 == 0:
        print "Buzz"
    elif x % 3 == 0:
        print "Fizz"
    else:
        print x

def buzz():
    for (100) i:
        fizz(i+1)

buzz()
