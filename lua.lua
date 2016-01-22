function fizz_buzz (n)
  if n % 3 == 0 then
    if n % 5 == 0 then
      io.write('FizzBuzz')
    else
      io.write('Fizz')
    end
  elseif n % 5 == 0 then
    io.write('Buzz')
  else
    io.write(n)
  end
  io.write('\n')
end

for i = 1, 100 do
  fizz_buzz(i)
end
