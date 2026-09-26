
{ pkgs, ... }:
{
  programs = {
    yazi = {
      enable = true;
      theme = {
        git = {
          unknown_sign = "";
          unstaged_sign = "unstaged";
          staged_sign = "staged";
          added_sign = "added";
          untracked_sign = "untracked";
          ignored_sign = "ignored";
          deleted_sign = "deleted";
          updated_sign = "updated";
        };
      };
      plugins = {
        git = {
          package = pkgs.yaziPlugins.git;
          setup = true;
        };
        full-border = {
          package = pkgs.yaziPlugins.full-border;
          setup = true;
        };
        toggle-pane = pkgs.yaziPlugins.toggle-pane;
        lazygit = pkgs.yaziPlugins.lazygit;
        smart-enter = pkgs.yaziPlugins.smart-enter;
      };
      keymap = {
        input.prepend_keymap = [
          {
            run = "close";
            on = [ "<Esc>" ];
            desc = "Cancel input";
          }
        ];
        mgr.prepend_keymap = [
          {
            run = "plugin toggle-pane min-preview";
            on = [ "T" ];
            desc = "Show or hide preview pane";
          }
          {
            run = "plugin lazygit";
            on = [
              "o"
              "g"
            ];
            desc = "Open Lazygit here";
          }
          {
            run = "plugin smart-enter";
            on = [ "<Enter>" ];
            desc = "Enter directory or open file";
          }
        ];
      };
      settings = {
        plugin.prepend_fetchers = [
          {
            url = "*";
            run = "git";
            group = "git";
          }
          {
            url = "*/";
            run = "git";
            group = "git";
          }
        ];
      };
    };
  };
}
