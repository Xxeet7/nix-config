{
  den.aspects.font =
    { pkgs, ... }:
    {
      fonts.fontconfig.enable = true;
      fonts.enableDefaultPackages = true;
      fonts.fontDir.enable = true;
      fonts.packages = with pkgs; [
        times-newer-roman
      ];
    };
}
