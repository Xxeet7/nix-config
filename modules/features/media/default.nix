{ den, ... }:
{
  den.aspects.media = {
    includes = with den.aspects; [
      mpv
      zathura
      readest
    ];
  };
}
