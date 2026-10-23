{
  den.aspects.recording = {
    homeManager =
      { pkgs, ... }: {
        home.packages = with pkgs; [
          # kdenlive
        ];
        programs = {
          obs-studio = {
            enable = true;
          };
        };
      };
  };
}
