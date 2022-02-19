void main (string[] args) {

    for (long idx = 1; idx <= 100; idx++){
        string res = "";

        if(idx % 3 == 0){
            res += "Fizz";
        }
        if(idx % 5 == 0){
            res += "Buzz";
        }
        stdout.printf((res.length == 0
        ? idx.to_string() : res)+"\n");
    }

}
