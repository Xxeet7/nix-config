{ ... }:
{
  imports = [
    ./plugins.nix
    ./keymaps.nix
    ./autocmd.nix
    ./formatter.nix
    ./lsp.nix
  ];
  programs = {
    nixvim =
      { lib, ... }:
      {
        enable = true;
        defaultEditor = true;
        vimdiffAlias = true;
	nixpkgs.config.allowUnfree = true;

        opts = {
          scrolloff = 10;
          lazyredraw = false;
          redrawtime = 10000;
          maxmempattern = 20000;
          synmaxcol = 300;

          swapfile = false;
          updatetime = 300;
          timeoutlen = 500;
          autoread = true;
          autowrite = true;
          diffopt = "vertical,algorithm:patience,linematch:60";

          winborder = "single";
          pumborder = "single";
        };

        globals = {
          neovide_fullscreen = true;
        };

        clipboard.register = "unnamedplus";

        dependencies = {
          tree-sitter = {
            enable = true;
            packageFallback = true;
          };
        };

        performance.byteCompileLua = {
          enable = true;
          luaLib = true;
          plugins = true;
        };
      };
  };
}
