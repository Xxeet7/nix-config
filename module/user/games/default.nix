{ pkgs, ... }: {
  home.packages = with pkgs; [
    pcsx2

    brogue-ce
    shattered-pixel-dungeon
    cataclysm-dda
    angband
    crawlTiles
    infra-arcana
    ivan
    liberal-crime-squad
    nethack-qt
    unnethack
    rogue
    sil-q
    tome4
  ];
}
