{ den, ... }:
{
  den.aspects.games = {
    includes = with den.aspects; [
      solitaire
      roguelike_tty
      roguelike_graphic
      pcsx2
      gamemode
    ];
  };
}
