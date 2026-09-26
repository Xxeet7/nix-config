{ pkgs, ... }:
let
  image = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/refs/heads/main/images/nord_dark_city.png";
    hash = "sha256-zFjU7ABvVJuuTeskLZanT35fzhwcaHKRU1Mka9PXlXo=";
  };
in
{
  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml" = {
    enable = true;
    force = true;
    text = ''
      <?xml version="1.1" encoding="UTF-8"?>

      <channel name="xfce4-desktop" version="1.0">
        <property name="last-settings-migration-version" type="uint" value="1"/>
        <property name="desktop-icons" type="empty">
          <property name="style" type="int" value="0"/>
        </property>
        <property name="backdrop" type="empty">
          <property name="screen0" type="empty">
            <property name="monitoreDP-1" type="empty">
              <property name="workspace0" type="empty">
                <property name="last-image" type="string" value="${image}"/>
              </property>
            </property>
          </property>
        </property>
        <property name="last" type="empty">
          <property name="window-width" type="int" value="684"/>
          <property name="window-height" type="int" value="547"/>
        </property>
      </channel>
    '';
  };
}
