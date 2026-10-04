{ pkgs, ... }:
{
  programs = {
    keepassxc = {
      enable = true;
      settings = {
        Browser = {
          Enabled = true;
          UpdateBinaryPath = false;
        };
        General = {
        };
        GUI = {
          ApplicationTheme = "dark";
          MinimizeOnClose = true;
          MinimizeToTray = true;
          ShowTrayIcon = true;
        };
      };
    };
    git-credential-keepassxc = {
      enable = true;
    };
  };
}
