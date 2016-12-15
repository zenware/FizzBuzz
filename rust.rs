use std::fmt::{ Display, Error, Formatter };

#[derive(Debug)]
enum Fzv {
    Value(u64),
    Fizz(u64),
    Buzz(u64),
    FizzBuzz(u64),
}

impl Display for Fzv {
    fn fmt(&self, f: &mut Formatter) -> Result<(), Error> {
        match self {
            &Fzv::FizzBuzz(_) => write!(f, "FizzBuzz"),
            &Fzv::Buzz(_) => write!(f, "Buzz"),
            &Fzv::Fizz(_) => write!(f, "Fizz"),
            &Fzv::Value(n) => write!(f, "{}", n),
        }
    }
}

fn main() {
    for n in (1..101).map(to_fzbz) {
        println!("{}", n);
    }
}

fn to_fzbz(n: u64) -> Fzv {
    match n {
        n if n % 15 == 0 => Fzv::FizzBuzz(n),
        n if n % 5 == 0 => Fzv::Buzz(n),
        n if n % 3 == 0 => Fzv::Fizz(n),
        n => Fzv::Value(n),
    }
}
