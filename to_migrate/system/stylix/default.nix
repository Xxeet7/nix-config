{ pkgs, config, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/bright.yaml";
    image = pkgs.fetchurl {
      url = "https://imgproxy.nanxiongnandi.com/NH7EiaJrLJg10eX3AQtVYKoig3rTm-nTdFH1Pcr_Rhg/w:1920/q:100/att:1/aHR0cHM6Ly9pbWcu/bmFueGlvbmduYW5k/aS5jb20vMjAyNjAx/L1doaXRlU2FuZHNO/TS5qcGc.jpg";
      hash = "sha256-BE6xxpRekR9SS7ccKg8Hhp0p4vYF2lhX/nY6TlOKSGg=";
    };
    polarity = "dark";
    fonts = {
      monospace = {
        package = pkgs.maple-mono.NF;
        name = "Maple Mono NF";
      };

      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
    };
    cursor = {
      package = pkgs.phinger-cursors;
      name = "phinger-cursors-dark";
      size = 32;
    };
    icons = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };
}
