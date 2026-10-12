{ pkgs, ... }: {
  home.packages = with pkgs; [
    pcsx2

    brogue-ce
    shattered-pixel-dungeon
    cataclysm-dda
    crawlTiles
    tome4

    angband
    nethack
    unnethack
    rogue

    aisleriot
    tty-solitaire
  ];
}
