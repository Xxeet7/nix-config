{ den, ... }:
{
  den.aspects.shell = {
    includes = with den.aspects; [
      fish
      # tmux
      yazi
      zellij
    ];
    homeManager = {
      programs = {
        eza = {
          enable = true;
        };
        fd = {
          enable = true;
        };
        ripgrep = {
          enable = true;
        };
        fzf = {
          enable = true;
          enableFishIntegration = true;
        };
        bat = {
          enable = true;
        };
      };
    };
  };
}
