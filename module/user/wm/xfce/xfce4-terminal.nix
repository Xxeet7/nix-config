{ ... }:
{
  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-terminal.xml" = {
    enable = true;
    force = true;
    text = ''
      <?xml version="1.1" encoding="UTF-8"?>

      <channel name="xfce4-terminal" version="1.0">
        <property name="color-background" type="string" value="#24241f1f3131"/>
        <property name="misc-maximize-default" type="bool" value="true"/>
        <property name="font-name" type="string" value="Maple Mono NF 12"/>
        <property name="misc-show-unsafe-paste-dialog" type="bool" value="false"/>
        <property name="misc-copy-on-select" type="bool" value="true"/>
        <property name="misc-menubar-default" type="bool" value="false"/>
        <property name="shortcuts-no-mnemonics" type="bool" value="true"/>
      </channel>
    '';
  };
}
