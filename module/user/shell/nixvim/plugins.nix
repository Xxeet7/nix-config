{ pkgs, ... }:
{
  programs.nixvim =
    { lib, ... }:
    {
      plugins = {
        lz-n = {
          enable = true;
        };

        mini = {
          enable = true;
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
          modules = {
            surround = { };
            splitjoin = { };
            align = { };
            operators = { };
            move = { };
          };
        };

        mini-basics = {
          enable = true;
          settings = {
            autocommands = {
              basic = true;
              relnum_in_visual_mode = true;
            };
            mappings = {
              basic = true;
              move_with_alt = true;
              option_toggle_prefix = "\\";
              windows = true;
            };
            options = {
              basic = true;
              extra_ui = true;
              win_borders = "auto";
            };
            silent = false;
          };
        };
        mini-statusline = {
          enable = true;
        };
        mini-notify = {
          enable = true;
        };
        mini-files = {
          enable = true;
          settings = {
            windows = {
              width_focus = 30;
              width_nofocus = 10;
            };
          };
        };
        mini-tabline = {
          enable = true;
          lazyLoad.settings.event = [
            "BufAdd"
          ];
        };
        mini-jump2d = {
          enable = true;
          settings = {
            hooks = {
              after_jump = lib.nixvim.mkRaw ''
                	    function()
                	    vim.api.nvim_input("zz")
                	    end
                	    '';
            };
          };
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
        };
        mini-cmdline = {
          enable = true;
          lazyLoad.settings.event = [ "CmdlineEnter" ];
        };

        web-devicons = {
          enable = true;
        };

        which-key = {
          enable = true;
          settings = {
            win.border = "single";
          };
        };

        telescope = {
          enable = true;
          settings = {
            defaults = {
              preview = {
                hide_on_startup = true;
              };
              mappings = {
                i = {
                  "<Esc>" = lib.nixvim.mkRaw "require('telescope.actions').close";
                  "<M-p>" = lib.nixvim.mkRaw "require('telescope.actions.layout').toggle_preview";
                };
                n = {
                  "<M-p>" = lib.nixvim.mkRaw "require('telescope.actions.layout').toggle_preview";
                };
              };
            };
          };
          lazyLoad.settings.cmd = "Telescope";
        };

        yazi = {
          enable = true;
          settings = {
            keymaps = {
              change_working_directory = "<S-CR>";
            };
          };
          lazyLoad.settings.cmd = "Yazi";
        };

        cutlass-nvim = {
          enable = true;
          settings = {
            cut_key = "x";
            override_del = true;
          };
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
        };

        undotree = {
          enable = true;
          settings = {
            autoOpenDiff = true;
            focusOnToggle = true;
          };
          lazyLoad.settings.cmd = "UndotreeToggle";
        };

        gitsigns = {
          enable = true;
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
        };

        blink-ripgrep.enable = true;
        friendly-snippets.enable = true;
        lspkind.enable = true;
        blink-cmp = {
          enable = true;
          settings = {
            enabled.__raw = ''
                            	    function() return not vim.tbl_contains({
              			    "typr"
                            	    }, vim.bo.filetype) end
                            	    '';
            cmdline.enabled = false;
            completion.menu.draw.columns.__raw =
              "{ { 'kind_icon' }, { 'label', 'label_description', gap = 1 }, { 'kind' } }";
            completion.menu.draw.components.kind_icon.text.__raw = ''
                            	    function(ctx)
              		    return require('lspkind').symbol_map[ctx.kind] or ""
              		    end
                            	    '';
            completion.documentation.auto_show = false;
            signature.enabled = true;
            sources = {
              default = [
                "lsp"
                "path"
                "snippets"
                "buffer"
              ];
              providers = {
                buffer.score_offset = -7;
                lsp.fallbacks = [ ];
                ripgrep = {
                  module = "blink-ripgrep";
                  name = "Ripgrep";
                  async = true;
                  score_offset = 100;
                };
              };
            };
          };
          lazyLoad.settings.event = [ "InsertEnter" ];
        };

        schemastore.enable = true;

        dashboard = {
          enable = true;
          settings = {
            theme = "doom";
            disable_move = true;
            hide = {
              statusline = false;
              tabline = false;
              winbar = false;
            };

            config = {
              header = [
                "                 .--.                   "
                "                 |__|                   "
                "                 .--.                   "
                "   ____     _____|  | ____     _____    "
                "  `.   \  .'    /|  |`.   \  .'    /    "
                "    `.  `'    .' |  |  `.  `'    .'     "
                "      '.    .'   |  |    '.    .'       "
                "      .'     `.  |__|    .'     `.      "
                "    .'  .'`.   `.      .'  .'`.   `.    "
                "  .'   /    `.   `.  .'   /    `.   `.  "
                " '----'       '----''----'       '----' "
                "                                        "
              ];
              center = [
                {
                  icon = "󰱼 ";
                  desc = "Seach files";
                  key = "f";
                  key_format = "[%s]";
                  action = "Telescope find_files";
                }
                {
                  icon = "󱋡 ";
                  desc = "Seach recent (old) files";
                  key = "o";
                  key_format = "[%s]";
                  action = "Telescope oldfiles";
                }
                {
                  icon = " ";
                  desc = "Open explorer (yazi)";
                  key = "y";
                  key_format = "[%s]";
                  action = "Yazi cwd";
                }
                {
                  icon = " ";
                  desc = "Quit";
                  key = "q";
                  key_format = "[%s]";
                  action = "quit";
                }
              ];
              vertical_center = true;
            };
          };
        };

        todo-comments.enable = true;

        ccc = {
          enable = true;
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
        };

        faster.enable = true;

        auto-save = {
          enable = true;
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
        };

        comment-box = {
          enable = true;
          lazyLoad.settings.event = [
            "BufAdd"
            "BufEnter"
          ];
        };

        nerdy = {
          enable = true;
          enableTelescope = true;
        };

        showkeys = {
          enable = true;
          lazyLoad.settings.cmd = "ShowkeysToggle";
        };

        neoclip.enable = true;

        neogit = {
          enable = true;
          lazyLoad.settings.cmd = [
            "Neogit"
            "NeogitLogCurrent"
            "NeogitCommit"
          ];
        };

        wakatime.enable = true;

        sidekick = {
          enable = true;
          settings = {
            nes.enabled = false;
          };
          lazyLoad.settings.cmd = "Sidekick";
        };

      };

      extraPlugins = [
        pkgs.vimPlugins.nvzone-typr
        (pkgs.vimUtils.buildVimPlugin {
          name = "floaterm";
          src = pkgs.fetchFromGitHub {
            owner = "nvzone";
            repo = "floaterm";
            rev = "fc2efaf25eeefcb33177d5807c0c745e125cf293";
            hash = "sha256-kTjE44pp02ZEJUp42p459l4WQA8oQ9SU8AuCxXFYm/k=";
          };
          doCheck = false;
        })
      ];

      extraConfigLua = ''
                	      require("typr").setup({
                		      insert_on_start = true,
                		      })
                	      require("floaterm").setup({
        			    border = true,
                		    size = { h = 80, w = 80 },
                		    mappings = {
                		      term = function(buf)
                			vim.keymap.set({ "n", "t" }, "<C-a>", function()
                			  require("floaterm.api").new_term()
                			end, { buffer = buf })
                		      end,
                		    },
                		  })
      '';
    };
}
