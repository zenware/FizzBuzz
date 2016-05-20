proc fizzbuzz n {
    switch -regexp [list $n [expr {$n % 3}]] {
        {[05] 0} {list fizzbuzz}
        {[^05] 0} {list fizz}
        {[05] [12]} {list buzz}
        default {list $n}
    }
}

for {set i 0} {$i <= 100} {incr i} {
    puts [fizzbuzz $i]
}
