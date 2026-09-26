{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xfce4-whiskermenu-plugin
    xfce4-clipman-plugin
    xfce4-cpugraph-plugin
    xfce4-notes-plugin

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

      desktopManager = {
        xfce = {
          enable = true;
        };
      };
    };

    displayManager = {
      defaultSession = "xfce";
    };

    picom = {
      enable = true;
      fade = true;
      inactiveOpacity = 0.9;
      shadow = true;
      fadeDelta = 4;
      # vSync = true;
      backend = "glx";
      settings = {
        corner-radius = 0;
        unredir-if-possible = true;
        shadow-exclude = [
          "name = 'cpt_frame_xcb_window'"
          "class_g ?= 'zoom'"
          "name = 'Notification'"
          "class_g = 'Xfce4-notifyd'"
          "_GTK_FRAME_EXTENTS@:c"
          "name ?= 'xfwm4'"
          "name ?= 'xfwm4-wireframe'"
        ];
        blur-background-exclude = [
          "class_g ?= 'zoom'"
        ];
      };
    };
  };
}
