{
  inputs = {
    fenix = {
      url = "github:nix-community/fenix";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };


  outputs = { self, nixpkgs, fenix, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShell = pkgs.mkShell { buildInputs = [ fenix.packages.${system}.latest.toolchain ]; };
      }) // {
        devShell.i686-linux = nixpkgs.legacyPackages.i686-linux.mkShell { buildInputs = [ fenix.packages.i686-linux.latest.toolchain ]; };
      };
}

