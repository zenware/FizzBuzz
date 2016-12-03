SELECT COALESCE(fizz || buzz, fizz, buzz, CAST(n AS CHAR(8))) AS fizzbuzz
  FROM (
      SELECT n0 + 3 * n3 + 9 * n9 + 27 * n27 + 81 * n81 AS n
        FROM
          (SELECT 0 AS n0  UNION ALL SELECT 1 UNION ALL SELECT 2 AS n0)  AS N0,
          (SELECT 0 AS n3  UNION ALL SELECT 1 UNION ALL SELECT 2 AS n3)  AS N3,
          (SELECT 0 AS n9  UNION ALL SELECT 1 UNION ALL SELECT 2 AS n9)  AS N9,
          (SELECT 0 AS n27 UNION ALL SELECT 1 UNION ALL SELECT 2 AS n27) AS N27,
          (SELECT 0 AS n81 UNION ALL SELECT 1          AS n81) AS N81
    ) AS N
    LEFT OUTER JOIN
      (SELECT 3 AS fizzstep, CAST('Fizz' AS CHAR(4)) AS fizz) AS Fizz
        ON n % fizzstep = 0
    LEFT OUTER JOIN
      (SELECT 5 AS buzzstep, CAST('Buzz' AS CHAR(4)) AS buzz) AS Buzz
        ON n % buzzstep = 0
  WHERE n BETWEEN 1 AND 100
  ORDER BY n;
