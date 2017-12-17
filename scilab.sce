for i=1:100
    if modulo(i, 15) == 0 then
        mprintf("%s\n", "FizzBuzz")    
    elseif modulo(i, 5) == 0 then
        mprintf("%s\n", "Buzz")
    elseif modulo(i, 3) == 0 then
        mprintf("%s\n", "Fizz")
    else
        mprintf("%s\n", string(i))
    end
end
