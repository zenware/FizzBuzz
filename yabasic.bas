for i =1 to 100
    if mod(i, 15) = 0 then
        print "FizzBuzz"
    elseif mod(i, 5) = 0 then
        print "Buzz"
    elseif mod(i, 3) = 0 then
        print "Fizz"
    else
        print i
    endif
next i
