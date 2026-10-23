{ ... }:
{
  programs.nixvim.lsp = {
    codelens.enable = true;
    inlayHints.enable = false;
    servers = {
      jsonls.enable = true;
      yamlls.enable = true;
    };
  };

  programs.nixvim.plugins = {
    lspconfig.enable = true;
    lspsaga = {
      enable = true;
      settings = {
        symbol_in_winbar.enable = true;
        beacon.enable = true;
        callhierarchy = false;
        code_action.enable = true;
        definition.enable = true;
        diagnostic.enable = false;
        finder.enable = false;
        hover.enable = false;
        implement.enable = true;
        lightbulb = {
          enable = true;
          sign = false;
        };
        outline = {
          enable = true;
          auto_preview = false;
          close_after_jump = true;
        };
        rename.enable = true;
      };
    };
  };

  programs.nixvim.diagnostic.settings = {
    update_in_insert = false;
    underline = true;
    severity_sort = true;
    float = {
      border = "single";
    };
    jump = {
      severity.__raw = "vim.diagnostic.severity.WARN";
    };
    virtual_lines = {
      current_line = true;
    };
    virtual_text = {
      current_line = false;
    };
  };
}
