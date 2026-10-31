# Show available recipes
default:
    @just --list --unsorted

# Format sources with 'nix fmt'
[group('nix')]
fmt *ARGS:
    nix fmt {{ ARGS }}

# Build the default package
[group('nix')]
build *ARGS:
    nix build .\# {{ ARGS }}

# Run the executable (`just run -- --help`)
[group('nix')]
run *ARGS:
    nix run .\# {{ ARGS }}

# Run all flake checks
[group('nix')]
check *ARGS:
    nix flake check {{ ARGS }}

# Build the project with `cargo build`
cargo-build *ARGS:
    cargo build {{ ARGS }}

# Run the executable with 'cargo run'
cargo-run *ARGS:
    cargo run {{ ARGS }}

# Run the executable after every change
watch *ARGS:
    bacon --job run -- -- {{ ARGS }}
