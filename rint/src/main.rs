use rand::distributions::{Distribution, Uniform};
use num_bigint::BigInt;
use num_traits::Zero;
use std::env;
use num_bigint::{ToBigInt};


fn main() {
    let args: Vec<String>=env::args().collect();
//    print!("{:?}",args);
    let iters;
    if args.len()<2{
        iters = 4;
    } else {
    iters = args[1].parse::<i32>().unwrap();
    }

    let mut out:BigInt =Zero::zero();
    for _ in 0..iters{
        let mut rng = rand::thread_rng();
        let cast:BigInt= Uniform::from(1..10).sample(&mut rng).to_bigint().unwrap();
        out = cast+10.to_bigint().unwrap()*out;
    }

    println!("{}",out);
}
