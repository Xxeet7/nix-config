{ ... }:
{
  programs.nixvim.autoGroups = {
    highlight_yank = { };
  };

  programs.nixvim.autoCmd = [
    {
      desc = "check for file change";
      event = [
        "FocusGained"
        "BufEnter"
        "CursorHold"
        "CursorHoldI"
      ];
      command = "checktime";
    }
    {
      desc = "save cursor position when leaving a buffer";
      event = [ "BufReadPost" ];
      pattern = [ "*" ];
      callback = {
        __raw = ''
          	function()
                 local line = vim.fn.line "'\""
                 if
                   line > 1
                   and line <= vim.fn.line "$"
                   and vim.bo.filetype ~= "commit"
                   and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
                 then
                   vim.cmd 'normal! g`"'
                 end
              end '';
      };
    }
  ];
}
