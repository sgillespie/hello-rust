fn main() {
    let s1 = String::from("Hello, World!");
    take_ownership(s1);

    // Can't do this!
    // println!("{s1}");

    let s1 = String::from("Hello, World!");
    borrow(&s1);

    // But I can do this:
    println!("{s1}");

    let mut s1 = String::from("Hello, World");
    update(&mut s1);

    // And I can do this:
    println!("{s1}");

    let mut s1 = String::from("Hello, World!");
    let s2 = &mut s4;
    let s3 = &mut s4;

    // Can't do this!
    // println!("{s2}");

    // But for some reason I can do this:
    println!("{s3}");

    let mut s1 = String::from("Hello, World!");
    let s2 = &s1;
    let s3 = &s1;
    let s4 = &mut s1;

    // Can't do this!
    // println!("{s3}");

    // But for some reason I can to this:
    println!("{s4}");

    let mut s1 = String::from("Hello, World!");
    let s2 = &s1;
    let s3 = &s1;

    // I can do this:
    println!("{s2}");
}

fn take_ownership(str: String) {
    println!("Taken ownership: {str}!");
}

fn borrow(str: &String) {
    println!("Borrowed: {str}!");
}

fn update(str: &mut String) {
    str.push_str("?");
}

// Can't do this!
// fn dangle() -> &String {
//     let s = String::from("hello");
// 
//     &s
// }
