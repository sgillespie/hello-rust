{
  perSystem = {
    treefmt = {
      projectRootFile = "flake.nix";

      programs = {
        alejandra.enable = true; # Nix
        just.enable = true; # Justfile
        rustfmt.enable = true; # Rust
        taplo.enable = true; # TOML

        # Markdown
        mdformat = {
          enable = true;
          settings.wrap = "keep";
          plugins = ps: [ps.mdformat-gfm];
        };
      };
    };
  };
}
