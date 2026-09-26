{ pkgs, ... }: {
  home.packages = with pkgs; [
    proton-vpn
    shortwave
  ];
}
