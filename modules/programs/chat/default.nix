{
  den.aspects.chat = {
    # install whatsapp as webapps
    nixos = {
      programs.chromium = {
        enable = true;
        extraOpts = {
          WebAppInstallForceList = [
            {
              "create_desktop_shortcut" = true;
              "default_launch_container" = "window";
              "url" = "https://web.whatsapp.com/";
            }
          ];
        };
      };
    };
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          ayugram-desktop
        ];
        programs = {
          vesktop = {
            enable = true;
            settings = {
              hardwareAcceleration = true;
              discordBranch = "stable";
              minimizeToTray = true;
              arRPC = true;
              enableMenu = true;
            };
            vencord.settings = {
              autoUpdate = true;
              autoUpdateNotification = true;
              disableMinSize = true;
              notifyAboutUpdates = false;
              plugins = {
                FakeNitro = {
                  enabled = true;
                };
                GifPaste = {
                  enabled = true;
                };
                NoTypingAnimation = {
                  enabled = true;
                };
                ReverseImageSearch = {
                  enabled = true;
                };
                ShikiCodeblocks = {
                  enabled = true;
                };
                Translate = {
                  enabled = true;
                };
                MessageLogger = {
                  enabled = true;
                  ignoreSelf = true;
                };
              };
              useQuickCss = false;
            };
          };
        };
      };
  };
}
