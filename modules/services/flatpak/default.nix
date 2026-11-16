{ inputs, ... }:
{
  flake-file.inputs = {
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
  };

  den.aspects.flatpak = {
    nixos = {
      imports = [
        (inputs.nix-flatpak.nixosModules.nix-flatpak or { })
      ];
      services.flatpak.enable = true;
    };
    homeManager = {
      imports = [
        (inputs.nix-flatpak.homeManagerModules.nix-flatpak or { })
      ];
      services.flatpak.enable = true;
    };
  };
}
