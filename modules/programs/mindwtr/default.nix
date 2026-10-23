{ inputs, ... }:
{
  flake-file.inputs = {
    mindwtr-flake = {
      url = "github:therealgramdalf/mindwtr-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  den.aspects.mindwtr = {
    nixos = {
      imports = [
        (inputs.mindwtr-flake.nixosModules.default or { })
      ];
      environment.systemPackages = [
        inputs."mindwtr-flake".packages.x86_64-linux."mindwtr"
      ];
    };
  };
}
