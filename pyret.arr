fun multiple-of(n :: Number, m :: Number) -> Boolean:
  doc: ```Consumes numbers `n` and `m` and produces true if `n` is a multiple of `m`, otherwise produces false.```
  num-modulo(n, m) == 0
where:
  # Tests for `multiple-of`
  multiple-of(4, 2) is true
  multiple-of(4, 3) is false

  10 is%(multiple-of) 5
  10 is-not%(multiple-of) 6

  5 satisfies multiple-of(15, _)
  5 violates  multiple-of(16, _)
end

fun fizz-buzz(n):
  ask:
    | multiple-of(n, 15) then: print("FizzBuzz")
    | multiple-of(n,  3) then: print("Fizz")
    | multiple-of(n,  5) then: print("Buzz")
    | otherwise: print(n)
  end
end

for each(n from range(1, 101)):
  fizz-buzz(n)
end
