{ pkgs, ... }:
{
  home.packages = with pkgs; [
    android-tools
    zeal
    ungit

    wakatime-cli

    devenv
  ];
  programs = {
    alacritty = {
      enable = true;
      settings = {
        window = {
          startup_mode = "Maximized";
        };
      };
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
