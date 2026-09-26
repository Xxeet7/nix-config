{ pkgs, ... }: {
  fonts.fontconfig.enable = true;
  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
    times-newer-roman
  ];
}
