{inputs, ...}: {
  perSystem = {
    config,
    self',
    pkgs,
    lib,
    ...
  }: {
    rust-project.crates = {
      "ch1".crane.args.version = "0.1.0";
      "ch2".crane.args.version = "0.1.0";
      "ch3".crane.args.version = "0.1.0";
      "ch4".crane.args.version = "0.1.0";
    };
    packages.default = self'.packages.ch1;
  };
}
