{ inputs, ... }:
{
  flake-file.inputs = {
    nix-craftapps = {
      url = "github:olafkfreund/nix-craftapps";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  den.aspects.office = {
    homeManager = { pkgs, ... }: {
      imports = [
        (inputs.nix-craftapps.homeManagerModules.default or { })
      ];

      home.packages = with pkgs; [
        zotero
      ];
      programs = {
        onlyoffice = {
          enable = true;
        };
        craftapps = {
          enable = true;
          enableAll = true;
        };
      };
    };
  };
}
