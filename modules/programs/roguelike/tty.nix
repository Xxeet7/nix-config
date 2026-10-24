{
  den.aspects.roguelike_tty = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          angband
          nethack
          unnethack
          rogue
        ];
      };
  };
}
