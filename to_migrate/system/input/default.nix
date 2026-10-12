{ pkgs, ... }: {
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
  };

  fonts.packages = with pkgs; [
    times-newer-roman
  ];
}
