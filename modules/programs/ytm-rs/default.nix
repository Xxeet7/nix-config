{ inputs, ... }:
{
  flake-file.inputs = {
    ytm-rs = {
      url = "github:grapedjuice/ytm-rs";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  den.aspects.ytm-rs = {
    nixos = {
      imports = [
      ];
      environment.systemPackages = [
        inputs."ytm-rs".packages.x86_64-linux."default"
      ];
    };
  };
}
