{ pkgs, ... }:
{
  programs = {
    keepassxc = {
      enable = true;
      settings = {
        Browser = {
          Enabled = true;
        };
        General = {
          MinimizeAfterUnlock = true;
        };
        GUI = {
          ApplicationTheme = "dark";
          MinimizeOnClose = true;
          MinimizeOnStartup = true;
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
