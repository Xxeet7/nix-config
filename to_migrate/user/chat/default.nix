{ pkgs, ... }:
{
  home.packages = with pkgs; [
  ayugram-desktop
  ];
  programs = {
    vesktop = {
      enable = true;
      settings = {
        hardwareAcceleration = true;
        discordBranch = "stable";
        minimizeToTray = true;
        arRPC = true;
        enableMenu = true;
      };
      vencord.settings = {
        autoUpdate = true;
        autoUpdateNotification = true;
        disableMinSize = true;
        notifyAboutUpdates = false;
        plugins = {
          FakeNitro = {
            enabled = true;
          };
          GifPaste = {
            enabled = true;
          };
          NoTypingAnimation = {
            enabled = true;
          };
          ReverseImageSearch = {
            enabled = true;
          };
          ShikiCodeblocks = {
            enabled = true;
          };
          MessageLogger = {
            enabled = true;
            ignoreSelf = true;
          };
        };
        useQuickCss = false;
      };
    };
  };
}
