{
  den.aspects.shell = {
    homeManager = 
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        xsel
      ];

      programs = {
        git = {
          enable = true;
          settings = {
            init.defaultBranch = "main";
            user.name = "Xxeet7";
            user.email = "2good4u991@gmail.com";
          };
        };
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
        btop = {
          enable = true;
        };
      };
    };
  };
}
