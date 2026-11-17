#[derive(Debug)]
#[allow(unused)]
struct User {
    active: bool,
    username: String,
    email: String,
    sign_in_count: u64,
}

fn main() {
    let user1 = User {
        active: true,
        username: String::from("sgillespie"),
        email: String::from("sean@mistersg.net"),
        sign_in_count: 0,
    };

    println!("Hello, user1 ({:?})", user1);

    let mut user2 = build_user(
        String::from("sgillespie"), 
        String::from("sean@mistersg.net")
    );
    user2.email = String::from("sgillespie00");

    println!("Hello, user2 ({:?})", user2);

    let user3 = User {
        email: String::from("sean@spicymario.net"),
        ..user2
    };
    println!("Hello, user3 ({:?})", user3);
}

fn build_user(username: String, email: String) -> User {
    User {
        active: true,
        sign_in_count: 1,
        username,
        email,
    }
}
