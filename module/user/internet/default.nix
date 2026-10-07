{ pkgs, ... }: {
  home.packages = with pkgs; [
    proton-vpn
    radiotray-ng
  ];
}
