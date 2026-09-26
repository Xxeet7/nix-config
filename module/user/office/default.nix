{ pkgs, ... }: {
  home.packages = with pkgs; [
    pdf4qt
    zotero

    libreoffice-qt-stable
  ];
  programs = {
    onlyoffice = {
      enable = true;
    };
  };
}
