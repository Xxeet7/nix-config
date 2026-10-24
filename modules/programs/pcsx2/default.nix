{
  den.aspects.pcsx2 = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          pcsx2
        ];
      };
  };
}
