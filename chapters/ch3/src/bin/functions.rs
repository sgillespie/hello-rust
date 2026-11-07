fn main() {
    let x = {
        println!("Do a bunch of dangerous things");
        plus_one(5)
    };

    println!("The value of x is: {x}");
}

fn plus_one(x: i32) -> i32 {
    x + 1
}
