{inputs, ...}: {
  perSystem = {
    config,
    self',
    pkgs,
    lib,
    ...
  }: {
    devShells.default = pkgs.mkShell {
      name = "hello-rust-shell";

      inputsFrom = [
        self'.devShells.rust
        config.treefmt.build.devShell # See ./treefmt.nix
      ];

      packages = with pkgs; [
        just
        nixd # Nix language server
        bacon
      ];
    };
  };
}
