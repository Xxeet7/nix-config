{
  den.aspects.readest = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          readest
        ];
      };
  };
}
