{ den, ... }:
{
  den.aspects.engineering = {
    includes = with den.aspects; [
      git
      lazygit
      alacritty
      devenv
      opencode
      dbeaver
      neovide
      nixvim
    ];
  };
}
