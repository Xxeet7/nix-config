{ ... }:
{
  home.file.".config/xfce4/helpers.rc" = {
    enable = true;
    force = true;
    text = ''
      WebBrowser=chromium-browser
      TerminalEmulator=alacritty
    '';
  };
}
