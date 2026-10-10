{ pkgs, ... }: {
  home.packages = with pkgs; [
    pdf4qt

    readest
  ];
  stylix.targets.anki.enable = false;
  programs = {
    mpv = {
      enable = true;
    };
    zathura = {
      enable = true;
    };
    anki = {
      enable = true;
      uiScale = 1.25;
      theme = "dark";
      profiles.default = {
        default = true;
        sync = {
          autoSync = true;
          username = "2good4u991@gmail.com";
          keyFile = "/home/kling7/.anki/keyFile";
        };
      };
    };
  };
}
