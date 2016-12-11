select
    case
    when n %15 = 0 then 'FizzBuzz'
    when n %3 = 0 then 'Fizz'
    when n %5 = 0 then 'Buzz'
    else n end fizzbuzz
from (
    select @no := @no+1 n
    from (select @no := 0) t0
    , (select 1 union all select 2 union all select 3 union all select 4) t1
    , (select 1 union all select 2 union all select 3 union all select 4) t2
    , (select 1 union all select 2 union all select 3 union all select 4) t3
    , (select 1 union all select 2 union all select 3 union all select 4) t4
    limit 100
) tx
