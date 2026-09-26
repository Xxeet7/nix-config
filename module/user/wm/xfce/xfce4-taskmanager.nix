{ ... }:
{
  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-taskmanager.xml" = {
    enable = true;
    force = true;
    text = ''
      <?xml version="1.1" encoding="UTF-8"?>

      <channel name="xfce4-taskmanager" version="1.0">
        <property name="window-maximized" type="bool" value="true"/>
        <property name="columns" type="empty">
          <property name="sort-type" type="uint" value="1"/>
          <property name="sort-id" type="uint" value="9"/>
        </property>
      </channel>
    '';
  };
}
