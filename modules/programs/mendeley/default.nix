{
  den.aspects.mendeley = {
    homeManager = { pkgs, ... }: {
      home.packages = with pkgs; [
        mendeley
      ];
    };
  };
}
