{ ... }:
{
  programs.nixvim.keymaps = [
    # general actions
    {
      mode = [ "n" ];
      key = "<C-q>";
      action = "<cmd>q<CR>";
      options = {
        silent = true;
        desc = "Quit";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-S-q>";
      action = "<cmd>q!<CR>";
      options = {
        silent = true;
        desc = "Force quit";
      };
    }
    {
      mode = [ "n" ];
      key = "<Esc>";
      action = "<cmd>nohl<CR>";
      options = {
        silent = true;
        desc = "Clear search highlight";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = ";";
      action = ":";
      options = {
        silent = true;
        desc = "; to : in normal and visual";
      };
    }
    {
      mode = [ "i" ];
      key = "jk";
      action = "<Esc>";
      options = {
        silent = true;
        desc = "Easy escape from input mode";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>e";
      action.__raw = ''
        		  function()
        		  if MiniFiles.close() == nil then MiniFiles.open(vim.api.nvim_buf_get_name(0), false) MiniFiles.reveal_cwd() end
        		  end
        		  '';

      options = {
        silent = true;
        desc = "Open file explorer";
      };
    }

    # find (telescope) actions
    {
      mode = [ "n" ];
      key = "<Leader>ff";
      action = "<cmd>Telescope find_files theme=get_ivy<CR>";
      options = {
        silent = true;
        desc = "Find files";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>fb";
      action = "<cmd>Telescope buffers theme=get_ivy<CR>";
      options = {
        silent = true;
        desc = "Find buffers";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>fh";
      action = "<cmd>Telescope help_tags theme=get_ivy<CR>";
      options = {
        silent = true;
        desc = "Find vim help docs";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>fk";
      action = "<cmd>Telescope keymaps theme=get_ivy<CR>";
      options = {
        silent = true;
        desc = "Find keymaps";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>fn";
      action = "<cmd>Telescope nerdy theme=get_ivy<CR>";
      options = {
        silent = true;
        desc = "Find nerd icons";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>fc";
      action = "<cmd>Telescope neoclip theme=get_ivy<CR>";
      options = {
        silent = true;
        desc = "Find clipboard registers";
      };
    }

    # terminal actions
    {
      mode = [
        "n"
        "t"
      ];
      key = "<M-i>";
      action = "<cmd>FloatermToggle<CR>";
      options = {
        silent = true;
        desc = "Toggle terminal";
      };
    }
    {
      mode = [ "t" ];
      key = "<C-x>";
      action = "<C-\\><C-n>";
      options = {
        silent = true;
        desc = "Exit terminal mode";
      };
    }

    # open actions
    {
      mode = [ "n" ];
      key = "<Leader>ol";
      action = "<cmd>FloatermNew --width=0.9 --height=1.0 lazygit<CR>";
      options = {
        silent = true;
        desc = "Open lazygit";
      };
    }
    {
      mode = "n";
      key = "<leader>ou";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        silent = true;
        desc = "Open/close Undotree";
      };
    }

    # yazi actions
    {
      mode = [ "n" ];
      key = "<Leader>yf";
      action = "<cmd>Yazi<CR>";
      options = {
        silent = true;
        desc = "Open yazi at current file";
      };
    }
    {
      mode = [ "n" ];
      key = "<Leader>yc";
      action = "<cmd>Yazi cwd<CR>";
      options = {
        silent = true;
        desc = "Open yazi at current working directory";
      };
    }

    # buffer actions
    {
      mode = [ "n" ];
      key = "<Leader>x";
      action = "<cmd>bd<CR>";
      options = {
        silent = true;
        desc = "Delete buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<Tab>";
      action = "<cmd>bn<CR>";
      options = {
        silent = true;
        desc = "Buffer next";
      };
    }
    {
      mode = [ "n" ];
      key = "<S-Tab>";
      action = "<cmd>bp<CR>";
      options = {
        silent = true;
        desc = "Buffer previous";
      };
    }

    # center screen when jumping
    {
      mode = [ "n" ];
      key = "n";
      action = "nzzzv";
      options = {
        silent = true;
        desc = "Next search result (centered)";
      };
    }
    {
      mode = [ "n" ];
      key = "N";
      action = "Nzzzv";
      options = {
        silent = true;
        desc = "Previous search result (centered)";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        silent = true;
        desc = "Half page down (centered)";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        silent = true;
        desc = "Half page up (centered)";
      };
    }

    # Better indenting in visual mode
    {
      mode = [ "v" ];
      key = "<";
      action = "<gv";
      options = {
        desc = "Indent left and reselect";
      };
    }
    {
      mode = [ "v" ];
      key = ">";
      action = ">gv";
      options = {
        desc = "Indent right and reselect";
      };
    }

    # Splitting & Resizing
    {
      mode = [ "n" ];
      key = "<leader>sv";
      action = "<Cmd>vsplit<CR>";
      options = {
        desc = "Split window vertically";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sh";
      action = "<Cmd>split<CR>";
      options = {
        desc = "Split window horizontally";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>so";
      action = "<Cmd>only<CR>";
      options = {
        desc = "Show only focused window panel";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sc";
      action = "<Cmd>close<CR>";
      options = {
        desc = "Close focused window panel";
      };
    }

    # Duplicate line and selections
    {
      mode = [ "n" ];
      key = "<A-S-j>";
      action = ":.copy.<cr>";
      options = {
        silent = true;
        desc = "Duplicate line ( below )";
      };
    }
    {
      mode = [ "n" ];
      key = "<A-S-k>";
      action = ":.copy.-1<cr>";
      options = {
        silent = true;
        desc = "Duplicate line ( above )";
      };
    }
    {
      mode = [ "x" ];
      key = "<A-S-j>";
      action = ":'<'>copy'><cr>gv";
      options = {
        silent = true;
        desc = "Duplicate selected ( below )";
      };
    }
    {
      mode = [ "x" ];
      key = "<A-S-k>";
      action = ":'<'>copy'<-1<cr>gv";
      options = {
        silent = true;
        desc = "Duplicate selected ( above )";
      };
    }

    # comment actions
    {
      mode = [ "n" ];
      key = "<leader>/";
      action = "gcc";
      options = {
        silent = true;
        remap = true;
        desc = "Toggle comment";
      };
    }
    {
      mode = [ "v" ];
      key = "<leader>/";
      action = "gc";
      options = {
        silent = true;
        remap = true;
        desc = "Toggle comment";
      };
    }

    # move window panel actions
    {
      mode = [ "n" ];
      key = "<C-S-k>";
      action = "<C-w>K";
      options = {
        silent = true;
        desc = "Move window to top";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-S-j>";
      action = "<C-w>J";
      options = {
        silent = true;
        desc = "Move window to bottom";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-S-h>";
      action = "<C-w>H";
      options = {
        silent = true;
        desc = "Move window to far left";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-S-l>";
      action = "<C-w>L";
      options = {
        silent = true;
        desc = "Move window to far right";
      };
    }

    # LSP actions
    {
      mode = [ "n" ];
      key = "<leader>la";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: code action";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ld";
      action = "<cmd>Lspsaga peek_definition<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: peek definition";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lt";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: peek type definition";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lo";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: outline";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: rename variable";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ln";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: next diagnostic";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lp";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        silent = true;
        desc = "Lsp saga: previous diagnostic";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lse";
      action = "<cmd>lsp enable<CR>";
      options = {
        silent = true;
        desc = "LSP server enable";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lsd";
      action = "<cmd>lsp disable<CR>";
      options = {
        silent = true;
        desc = "LSP server disable";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lsx";
      action = "<cmd>lsp stop<CR>";
      options = {
        silent = true;
        desc = "LSP server stop";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lsr";
      action = "<cmd>lsp restart<CR>";
      options = {
        silent = true;
        desc = "LSP server restart";
      };
    }
    {
      mode = [ "n" ];
      key = "<S-k>";
      action.__raw = ''
        	  function()
        	  if not vim.diagnostic.open_float { scope = "cursor" } then
        	    vim.lsp.buf.hover { silent = true, max_height = 7, border = "single" }
        	  end
        	  vim.diagnostic.open_float { focus = false, silent = true, max_height = 7, border = "single", scope = "cursor" }
        	  end
        	  '';

      options = {
        silent = true;
        desc = "LSP hover info";
      };
    }

    # format action
    {
      mode = [ "n" ];
      key = "<leader>cf";
      action.__raw = ''
        	  function()
        	  require("conform").format { lsp_fallback = true }
        	  end
        	  '';

      options = {
        silent = true;
        desc = "Format code file";
      };
    }

    # split join action
    {
      mode = [ "n" ];
      key = "J";
      action.__raw = ''
        	  function()
        	  MiniSplitjoin.toggle()
        	  end
        	  '';

      options = {
        silent = true;
        desc = "Split join code";
      };
    }

    # showkeys action
    {
      mode = [ "n" ];
      key = "\\S";
      action = "<cmd>ShowkeysToggle<CR>";
      options = {
        silent = true;
        desc = "toggle 'showkeys'";
      };
    }

    # neogit action
    {
      mode = [ "n" ];
      key = "<leader>on";
      action = "<cmd>Neogit<CR>";
      options = {
        silent = true;
        desc = "Open neogit";
      };
    }

    # typr actions
    {
      mode = [ "n" ];
      key = "<leader>ott";
      action = "<cmd>Typr<CR>";
      options = {
        silent = true;
        desc = "Open typr";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ots";
      action = "<cmd>TyprStats<CR>";
      options = {
        silent = true;
        desc = "Open typr stats";
      };
    }

    # sidekick actions
    {
      mode = [
        "n"
        "x"
      ];
      key = "<C-.>";
      action = "<cmd>Sidekick cli toggle<CR>";
      options = {
        silent = true;
        desc = "Quick toggle sidekick window";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>aa";
      action = "<cmd>Sidekick cli toggle<CR>";
      options = {
        silent = true;
        desc = "Toggle sidekick window";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>at";
      action = "<cmd>Sidekick cli send { msg = '{this}' }<CR>";
      options = {
        silent = true;
        desc = "Send this to sidekick";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>af";
      action = "<cmd>Sidekick cli send { msg = '{file}' }<CR>";
      options = {
        silent = true;
        desc = "Send this file to sidekick";
      };
    }
    {
      mode = [ "x" ];
      key = "<leader>av";
      action = "<cmd>Sidekick cli send { msg = '{selection}' }<CR>";
      options = {
        silent = true;
        desc = "Send this visual selection to sidekick";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ap";
      action = "<cmd>Sidekick cli prompt<CR>";
      options = {
        silent = true;
        desc = "Prompt select for sidekick";
      };
    }

  ];
}
