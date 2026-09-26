{ pkgs, ... }:
{

  imports = [
    ./eza.nix
    ./fish.nix
    ./lazygit.nix
    ./nixvim/default.nix
    ./tmux.nix
    ./yazi.nix
  ];

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
    opencode = {
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
}
