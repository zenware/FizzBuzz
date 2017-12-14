for i=1:100
    if modulo(i, 15) == 0 then
        disp("FizzBuzz")    
    elseif modulo(i, 5) == 0 then
        disp("Buzz")
    elseif modulo(i, 3) == 0 then
        disp("Fizz")
    else
        disp(i)
    end
end
