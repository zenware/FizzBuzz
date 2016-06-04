(1..100).each {
    if(it % 15 == 0){
        println "FizzBuzz"
    }else if(it % 3 == 0){
        println "Fizz"
    }else if(it % 5 == 0){
        println "Buzz"
    }else{
        println it
    }
}
