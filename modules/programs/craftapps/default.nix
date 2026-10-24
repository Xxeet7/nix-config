{ inputs, ... }:
{
  flake-file.inputs = {
    nix-craftapps = {
      url = "github:olafkfreund/nix-craftapps";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  den.aspects.craftapps = {
    homeManager = {
      imports = [
        (inputs.nix-craftapps.homeManagerModules.default or { })
      ];

      programs = {
        craftapps = {
          enable = true;
          enableAll = true;
        };
      };
    };
  };
}
