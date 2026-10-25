_:
{
  programs = {
    keepassxc = {
      enable = true;
      autostart = true;
      settings = {
        Browser = {
          Enabled = true;
          UpdateBinaryPath = false;
        };
        General = {
          GlobalAutoTypeKey = 86;
          GlobalAutoTypeModifiers = 201326592;
        };
        GUI = {
          ApplicationTheme = "dark";
          MinimizeOnStartup = true;
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
