{ den, ... }:
{
  den.aspects.browser = {
    includes = with den.aspects; [
      varia
      chromium
    ];
  };
}
