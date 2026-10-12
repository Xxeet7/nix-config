{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    papirus-icon-theme
    nordic

    libnotify
  ];

  services = {
    xserver = {
      enable = true;
      videoDrivers = [ "modesetting" ];

      xkb = {
        layout = "us";
        options = "eurosign:e,caps:escape";
      };

      windowManager = {
        awesome = {
          enable = true;
          luaModules = with pkgs.luaPackages; [
            luarocks
            luadbi-mysql
            awesome-wm-widgets
          ];
        };
      };
    };

    displayManager = {
      defaultSession = "none+awesome";
    };
  };
}
