{ lib, ... }:
{
  imports = [
    ./pointers.nix
    ./default-apps.nix
    ./thunar.nix
    ./xfce4-keyboard-shortcuts.nix
    ./xfce4-panel.nix
    ./xfce4-power-manager.nix
    ./xfce4-screensaver.nix
    ./xfce4-taskmanager.nix
    ./xfce4-terminal.nix
    ./xfwm4.nix
  ];
  lib.stylix.targets.xfce.enable = true;
}
