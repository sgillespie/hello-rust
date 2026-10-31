{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
    treefmt.url = "github:numtide/treefmt-nix";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    rust-flake = {
      url = "github:juspay/rust-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    flake-parts,
    nixpkgs,
    rust-flake,
    systems,
    treefmt,
    ...
  } @ inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        rust-flake.flakeModules.default
        rust-flake.flakeModules.nixpkgs
        treefmt.flakeModule

        # Project build via rust-flake
        ./nix/rust-project.nix
        # Development shell
        ./nix/devshell.nix
        # Source code formatters
        ./nix/treefmt.nix
      ];

      systems = import systems;
    };
}
