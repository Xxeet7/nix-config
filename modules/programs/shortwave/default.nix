{
  den.aspects.shortwave = {
    homeManager =
      { pkgs, ... }: {
        home.packages = with pkgs; [
          shortwave
        ];
      };
  };
}
