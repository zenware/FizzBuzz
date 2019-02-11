class
  APPLICATION

create
  make

feature {NONE}

  make
    do
      across
        1 |..| 100 as i
      loop
        fizzbuzz(i.item)
      end
    end

  fizzbuzz(n: INTEGER)
    require
      n >= 0
    do
      if n \\ 15 = 0 then io.put_string("FIZZBUZZ")
      elseif n \\ 3 = 0 then io.put_string("FIZZ")
      elseif n \\ 5 = 0 then io.put_string("BUZZ")
      else io.put_integer(n)
      end
      
      io.put_new_line
    end
end