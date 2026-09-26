{ ... }:
{
  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/pointers.xml" = {
    enable = true;
    force = true;
#HACK this is hardcoded hardware
    text = ''
      <?xml version="1.1" encoding="UTF-8"?>

      <channel name="pointers" version="1.0">
        <property name="ASUE130100_04F33128_Mouse" type="empty">
          <property name="RightHanded" type="bool" value="true"/>
          <property name="ReverseScrolling" type="bool" value="true"/>
          <property name="Threshold" type="int" value="1"/>
          <property name="Acceleration" type="double" value="5"/>
        </property>
        <property name="ASUE130100_04F33128_Touchpad" type="empty">
          <property name="Properties" type="empty">
            <property name="libinput_Tapping_Enabled" type="int" value="1"/>
            <property name="libinput_Click_Method_Enabled" type="array">
              <value type="int" value="1"/>
              <value type="int" value="0"/>
            </property>
          </property>
          <property name="RightHanded" type="bool" value="true"/>
          <property name="ReverseScrolling" type="bool" value="true"/>
          <property name="Threshold" type="int" value="1"/>
          <property name="Acceleration" type="double" value="5"/>
        </property>
      </channel>
    '';
  };
}
