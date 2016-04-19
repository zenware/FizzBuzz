for inum = 1:100
  fizzbuzz = '';
  if mod(inum,3) == 0
	fizzbuzz = [fizzbuzz 'Fizz'];
  end
  if mod(inum,5) == 0
	fizzbuzz = [fizzbuzz 'Buzz'];
  end
  if isempty(fizzbuzz)
	disp(num2str(inum))
  else
	disp(fizzbuzz)
  end
end
