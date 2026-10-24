{
  den.aspects.varia = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          varia
        ];
        programs = {
          aria2 = {
            enable = true;
          };
        };
      };
  };
}
