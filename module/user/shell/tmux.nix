{ pkgs, ... }:
{
  programs = {
    tmux = {
      enable = true;
      sensibleOnTop = true;
      keyMode = "vi";
      terminal = "xterm-256color";
      mouse = true;
      prefix = "C-a";
      clock24 = true;
      # plugins = [
      #   {
      #     plugin = pkgs.tmuxPlugins.minimal-tmux-status;
      #     extraConfig = ''
      #       set -g @minimal-tmux-use-arrow true
      #       set -g @minimal-tmux-right-arrow ""
      #       set -g @minimal-tmux-left-arrow ""
      #     '';
      #   }
      # ];
      extraConfig = ''
        		bind x kill-pane
        		set -g status-position top
        		set -s copy-command 'xsel -b'
        		set -s set-clipboard off
        		'';
    };
  };
}
