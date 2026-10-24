{ lib, den, ... }:
{
  den.default.nixos.system.stateVersion = "26.05";
  den.default.homeManager.home.stateVersion = "26.05";

  den.default.nixos = {
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.allowUnfreePredicate = _: true;
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  den.default.homeManager = {
    programs.home-manager.enable = true;
    nixpkgs.config.allowUnfree = true;
  };

  # enable hm by default
  den.schema.user.classes = lib.mkDefault [ "homeManager" ];
}
