#!/usr/bin/env ruby

def fizz_buzz(num)
  result = ''
  result += 'Fizz' if (num % 3).zero?
  result += 'Buzz' if (num % 5).zero?
  puts result.empty? ? num : result
end

(1..100).each { |x| fizz_buzz x }
