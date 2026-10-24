{
  den.aspects.roguelike_graphic = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          brogue-ce
          shattered-pixel-dungeon
          # cataclysm-dda
          crawlTiles
          tome4
        ];
      };
  };
}
