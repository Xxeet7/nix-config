{
  den.aspects.karere = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          karere
        ];
      };
  };
}
