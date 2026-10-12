{ pkgs, ... }: {
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5 = {
      settings = {
        globalOptions = {
          "Hotkey/TriggerKeys" = {
            "0" = "Super+space";
          };
          "Hotkey/PrevCandidate" = {
            "0" = "Shift+Tab";
          };
          "Hotkey/NextCandidate" = {
            "0" = "Tab";
          };
        };
        inputMethod = {
          GroupOrder = {
            "0" = "Default";
          };
          "Groups/0" = {
            "Default Layout" = "us";
            DefaultIM = "pinyin";
            Name = "Default";
          };
          "Groups/0/Items/0" = {
            Name = "keyboard-us";
          };
          "Groups/0/Items/1" = {
            Name = "pinyin";
          };
        };
      };
      addons = with pkgs; [
        qt6Packages.fcitx5-chinese-addons
        qt6Packages.fcitx5-configtool
      ];
    };
  };
}
