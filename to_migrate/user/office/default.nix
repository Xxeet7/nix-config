{ pkgs, ... }: {
  home.packages = with pkgs; [
    zotero
  ];
  programs = {
    onlyoffice = {
      enable = true;
    };
    craftapps = {
      enable = true;
      enableAll = true;
    };
  };
}
