{ ... }:
{
  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-screensaver.xml" = {
    enable = true;
    force = true;
    text = ''
      <?xml version="1.1" encoding="UTF-8"?>

      <channel name="xfce4-screensaver" version="1.0">
        <property name="saver" type="empty">
          <property name="mode" type="int" value="2"/>
          <property name="themes" type="empty">
            <property name="list" type="array">
              <value type="string" value="screensavers-xfce-floaters"/>
            </property>
          </property>
        </property>
        <property name="screensavers" type="empty">
          <property name="xfce-floaters" type="empty">
            <property name="number-of-images" type="int" value="7"/>
            <property name="arguments" type="string" value="-n &apos;7&apos;"/>
          </property>
        </property>
      </channel>
    '';
  };
}
