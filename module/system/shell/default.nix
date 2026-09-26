{ pkgs, ... }:
{
  programs = {
    bash = {
      enable = true;
      blesh = {
        enable = true;
      };
    };
    fish = {
      enable = true;
    };
  };

  # enable fish for all users
  environment.shells = with pkgs; [ fish ];
  users.defaultUserShell = pkgs.fish;
}
