{
  den.aspects.solitaire = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          aisleriot
          tty-solitaire
        ];
      };
  };
}
