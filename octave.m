% Running code - http://ideone.com/uGgJMt
% Must mention coursera ML course by Andrew NG, did it more than 3 years back, still was able to write this!
for number = 1:100
  if ( mod(number,15) == 0 )
    disp('FizzBuzz');
  elseif ( mod(number, 3) == 0 )
    disp('Fizz')
  elseif ( mod(number, 5) == 0 )
    disp('Buzz')
  else
    disp(num2str(number))
  endif
endfor
