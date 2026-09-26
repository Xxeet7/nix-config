{ pkgs, ... }:
{
  programs = {
    fish = {
      enable = true;
      shellInit = "set -U fish_greeting ''\nfish_vi_key_bindings";
      shellAliases = {
        cls = "clear";
        ls = "eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions -G --group-directories-first";
        la = "eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions -a -G --group-directories-first";
        ll = "eza -al --color=always --group-directories-first --icons=always";
        lt = "eza -aT --color=always --group-directories-first --icons=always";
        "l." = "eza -a | grep -e '^\.'";
      };
      plugins = [
        {
          name = "sponge";
          src = pkgs.fetchFromGitHub {
            owner = "meaningful-ooo";
            repo = "sponge";
            rev = "384299545104d5256648cee9d8b117aaa9a6d7be";
            sha256 = "sha256-MdcZUDRtNJdiyo2l9o5ma7nAX84xEJbGFhAVhK+Zm1w=";
          };
        }
        {
          name = "done";
          src = pkgs.fetchFromGitHub {
            owner = "franciscolourenco";
            repo = "done";
            rev = "b86292a52a2b8f646ef8d25daa3cc01ccab60b62";
            sha256 = "sha256-Tr22ktv2tQdtV153xm2vHnll8G26abSyXD5IokMjAj0=";
          };
        }
        {
          name = "fzf.fish";
          src = pkgs.fetchFromGitHub {
            owner = "PatrickF1";
            repo = "fzf.fish";
            rev = "6a6136998879dcc1f29a405dfdd6b92c5f229c39";
            sha256 = "sha256-ql8UncXGwOIpyC49w1bCRfynRB02u7s1a1rOWTfKcTk=";
          };
        }
        {
          name = "hydro";
          src = pkgs.fetchFromGitHub {
            owner = "jorgebucaran";
            repo = "hydro";
            rev = "f130b55ee3eaf099eccf588e2a62e5447068d120";
            sha256 = "sha256-Dfq974KpD1mtQKznIlkXfZfDnSF/4MfLTA18Ak0LADE=";
          };
        }
      ];
    };
  };
}
