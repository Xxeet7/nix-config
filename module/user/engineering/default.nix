{ pkgs, ... }:
{
  home.packages = with pkgs; [
    android-tools
    zeal
    ungit

    wakatime-cli
  ];
  programs = {
    ghostty = {
      enable = true;
      systemd.enable = true;
    };
    dbeaver = {
      enable = true;
    };
    neovide = {
      enable = true;
      settings = {
        maximized = true;
      };
    };
  };
}
