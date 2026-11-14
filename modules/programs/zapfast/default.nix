{
  den.aspects.zapfast = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          zapfast
        ];
      };
  };
}
