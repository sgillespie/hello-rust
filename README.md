# Hello, Rust!

> A first project for learning Rust with fully functional Nix support. Uses
> [crane](https://crane.dev/), via [rust-flake](https://github.com/juspay/rust-flake).

## Getting Started

If using direnv, approve and load the environment

```
direnv allow
```

Otherwise, enter the development shell:

```
nix develop
```

And start hacking:

```
cargo build
```

The dev shell provides `cargo`, `rust-analyzer`, `rustfmt` and other development tools.

## Usage

A [`justfile`](https://just.systems/) is included for Makefile'esque commands to be run
inside of the devShell.

```
just

Available recipes:
    default           # Show available recipes
    cargo-build *ARGS # Build the project with `cargo build`
    cargo-run *ARGS   # Run the executable with 'cargo run'
    watch *ARGS       # Run the executable after every change

    [nix]
    fmt *ARGS         # Format sources with 'nix fmt'
    build *ARGS       # Build the default package
    run *ARGS         # Run the executable (`just run -- --help`)
    check *ARGS       # Run all flake checks
```
