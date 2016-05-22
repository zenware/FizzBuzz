proc fizzbuzz n {
    switch -regexp [list $n [expr {$n % 3}]] {
        {[05] 0} {list FizzBuzz}
        {[^05] 0} {list Fizz}
        {[05] [12]} {list Buzz}
        default {list $n}
    }
}

for {set i 1} {$i <= 100} {incr i} {
    puts [fizzbuzz $i]
}
