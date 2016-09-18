--http://sqlfiddle.com/#!15/9eecb7db59d16c80417c72d1e1f4fbf1/11608
--Runs with postgresql 9.3
--This will not match with the expected output because of the column header called "FizzBuzzOrBoth" !

SELECT FizzBuzzOrBoth 
FROM 
  (SELECT 
    CASE
      WHEN i % 15 = 0 THEN 'FizzBuzz'
      WHEN i %  5 = 0 THEN 'Buzz'
      WHEN i %  3 = 0 THEN 'Fizz'
      ELSE i::text
    END AS FizzBuzzOrBoth
  FROM generate_series(1,100) AS i)
AS FizzBuzzOrBothTable ;
