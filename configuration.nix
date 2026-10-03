{
  pkgs,
  inputs,
  lib,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./module/system/default.nix
  ];

  networking.hostName = "neo";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Jakarta";

  users.users.kling7 = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  environment.systemPackages = with pkgs; [
    vim
    nixfmt
    inputs."mindwtr-flake".packages.x86_64-linux."mindwtr"
  ];

  programs = {
    git = {
      enable = true;
    };
    localsend = {
      enable = true;
      openFirewall = true;
    };
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = _: true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  systemd.tmpfiles.rules = [
    "d /mnt/Storage/ 0755 kling7 users - -"
  ];

  system.stateVersion = "26.05";
}
