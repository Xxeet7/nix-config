{
  den.aspects.ayugram = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          ayugram-desktop
        ];
      };
  };
}
