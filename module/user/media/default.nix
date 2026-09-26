{ pkgs, ... }: {
  home.packages = with pkgs; [
    pdf4qt
  ];
  programs = {
    foliate = {
      enable = true;
    };
    mpv = {
      enable = true;
    };
    zathura = {
      enable = true;
    };
    anki = {
      enable = true;
      uiScale = 1.25;
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
