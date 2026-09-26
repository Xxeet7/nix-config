{ ... }:
{
  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml" = {
    enable = true;
    force = true;
    text = ''
      <?xml version="1.1" encoding="UTF-8"?>

      <channel name="xfce4-panel" version="1.0">
        <property name="configver" type="int" value="2"/>
        <property name="panels" type="array">
          <value type="int" value="1"/>
          <property name="dark-mode" type="bool" value="true"/>
          <property name="panel-1" type="empty">
            <property name="position" type="string" value="p=6;x=0;y=0"/>
            <property name="length" type="uint" value="100"/>
            <property name="position-locked" type="bool" value="true"/>
            <property name="icon-size" type="uint" value="16"/>
            <property name="size" type="uint" value="36"/>
            <property name="plugin-ids" type="array">
              <value type="int" value="7"/>
              <value type="int" value="11"/>
              <value type="int" value="2"/>
              <value type="int" value="5"/>
              <value type="int" value="4"/>
              <value type="int" value="3"/>
              <value type="int" value="8"/>
              <value type="int" value="12"/>
              <value type="int" value="6"/>
              <value type="int" value="15"/>
              <value type="int" value="10"/>
              <value type="int" value="14"/>
              <value type="int" value="9"/>
              <value type="int" value="1"/>
              <value type="int" value="13"/>
            </property>
            <property name="background-style" type="uint" value="0"/>
            <property name="border-width" type="uint" value="0"/>
            <property name="nrows" type="uint" value="1"/>
          </property>
        </property>
        <property name="plugins" type="empty">
          <property name="plugin-2" type="string" value="tasklist">
            <property name="grouping" type="uint" value="1"/>
            <property name="show-labels" type="bool" value="false"/>
          </property>
          <property name="plugin-3" type="string" value="separator">
            <property name="expand" type="bool" value="true"/>
            <property name="style" type="uint" value="0"/>
          </property>
          <property name="plugin-4" type="string" value="pager">
            <property name="rows" type="uint" value="1"/>
            <property name="miniature-view" type="bool" value="false"/>
            <property name="numbering" type="bool" value="false"/>
            <property name="wrap-workspaces" type="bool" value="false"/>
          </property>
          <property name="plugin-5" type="string" value="separator">
            <property name="style" type="uint" value="0"/>
          </property>
          <property name="plugin-6" type="string" value="systray">
            <property name="square-icons" type="bool" value="true"/>
            <property name="known-legacy-items" type="array">
              <value type="string" value="fcitx5 tray window"/>
              <value type="string" value="gigolo"/>
              <value type="string" value="xfmpc"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (84%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (70%)"/>
              <value type="string" value="xfce terminal"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (79%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (58%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (60%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (61%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (49%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (66%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (77%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (73%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (69%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (71%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (72%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (65%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (74%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (68%)"/>
              <value type="string" value="clipman"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (75%)"/>
              <value type="string" value="wi-fi network connection “jingga” active: jingga (67%)"/>
            </property>
            <property name="known-items" type="array">
              <value type="string" value="Fcitx"/>
              <value type="string" value="f1nt5elVTz"/>
              <value type="string" value="KeePassXC"/>
              <value type="string" value="vesktop_status_icon_1"/>
              <value type="string" value="heroic_status_icon_1"/>
              <value type="string" value="tray-icon tray app"/>
              <value type="string" value="io.github.tobagin.karere"/>
              <value type="string" value="WhatSie"/>
              <value type="string" value="ZapZap"/>
              <value type="string" value="blueman"/>
            </property>
          </property>
          <property name="plugin-8" type="string" value="clock">
            <property name="timezone" type="string" value="Asia/Jakarta"/>
            <property name="show-week-numbers" type="bool" value="false"/>
            <property name="digital-date-format" type="string" value="%m/%d/%Y"/>
            <property name="digital-time-font" type="string" value="System-ui Bold 10"/>
            <property name="digital-date-font" type="string" value="System-ui Bold 10"/>
          </property>
          <property name="plugin-9" type="string" value="separator">
            <property name="style" type="uint" value="0"/>
          </property>
          <property name="plugin-11" type="string" value="separator">
            <property name="style" type="uint" value="0"/>
          </property>
          <property name="plugin-12" type="string" value="separator">
            <property name="style" type="uint" value="0"/>
            <property name="expand" type="bool" value="true"/>
          </property>
          <property name="plugin-13" type="string" value="power-manager-plugin"/>
          <property name="plugin-7" type="string" value="whiskermenu">
            <property name="recent" type="array">
              <value type="string" value="brogue-ce.desktop"/>
              <value type="string" value="io.github.JakubMelka.Pdf4qt.Pdf4QtViewer.desktop"/>
              <value type="string" value="io.github.JakubMelka.Pdf4qt.Pdf4QtPageMaster.desktop"/>
              <value type="string" value="io.github.JakubMelka.Pdf4qt.Pdf4QtEditor.desktop"/>
              <value type="string" value="io.github.JakubMelka.Pdf4qt.desktop"/>
              <value type="string" value="org.keepassxc.KeePassXC.desktop"/>
            </property>
          </property>
          <property name="plugin-14" type="string" value="cpugraph">
            <property name="update-interval" type="int" value="2"/>
            <property name="time-scale" type="int" value="0"/>
            <property name="size" type="int" value="16"/>
            <property name="mode" type="int" value="1"/>
            <property name="color-mode" type="int" value="0"/>
            <property name="frame" type="int" value="0"/>
            <property name="border" type="int" value="1"/>
            <property name="bars" type="int" value="1"/>
            <property name="per-core" type="int" value="0"/>
            <property name="tracked-core" type="int" value="0"/>
            <property name="in-terminal" type="int" value="1"/>
            <property name="startup-notification" type="int" value="0"/>
            <property name="load-threshold" type="int" value="0"/>
            <property name="smt-stats" type="int" value="0"/>
            <property name="smt-issues" type="int" value="0"/>
            <property name="per-core-spacing" type="int" value="1"/>
            <property name="command" type="string" value=""/>
            <property name="background" type="array">
              <value type="double" value="1"/>
              <value type="double" value="1"/>
              <value type="double" value="1"/>
              <value type="double" value="0"/>
            </property>
            <property name="foreground-1" type="array">
              <value type="double" value="0"/>
              <value type="double" value="1"/>
              <value type="double" value="0"/>
              <value type="double" value="1"/>
            </property>
            <property name="foreground-2" type="array">
              <value type="double" value="1"/>
              <value type="double" value="0"/>
              <value type="double" value="0"/>
              <value type="double" value="1"/>
            </property>
            <property name="foreground-3" type="array">
              <value type="double" value="0"/>
              <value type="double" value="0"/>
              <value type="double" value="1"/>
              <value type="double" value="1"/>
            </property>
            <property name="smt-issues-color" type="array">
              <value type="double" value="0.90000000000000002"/>
              <value type="double" value="0"/>
              <value type="double" value="0"/>
              <value type="double" value="1"/>
            </property>
            <property name="foreground-system" type="array">
              <value type="double" value="0.90000000000000002"/>
              <value type="double" value="0.10000000000000001"/>
              <value type="double" value="0.10000000000000001"/>
              <value type="double" value="1"/>
            </property>
            <property name="foreground-user" type="array">
              <value type="double" value="0.10000000000000001"/>
              <value type="double" value="0.40000000000000002"/>
              <value type="double" value="0.90000000000000002"/>
              <value type="double" value="1"/>
            </property>
            <property name="foreground-nice" type="array">
              <value type="double" value="0.90000000000000002"/>
              <value type="double" value="0.80000000000000004"/>
              <value type="double" value="0.20000000000000001"/>
              <value type="double" value="1"/>
            </property>
            <property name="foreground-iowait" type="array">
              <value type="double" value="0.20000000000000001"/>
              <value type="double" value="0.90000000000000002"/>
              <value type="double" value="0.40000000000000002"/>
              <value type="double" value="1"/>
            </property>
          </property>
          <property name="plugin-1" type="string" value="pulseaudio">
            <property name="enable-keyboard-shortcuts" type="bool" value="true"/>
            <property name="play-sound" type="bool" value="true"/>
            <property name="known-players" type="string" value=";Chromium;de.haeckerfelix.Shortwave;ZapZap"/>
          </property>
          <property name="clipman" type="empty">
            <property name="tweaks" type="empty">
              <property name="inhibit" type="bool" value="false"/>
              <property name="never-confirm-history-clear" type="bool" value="false"/>
            </property>
            <property name="settings" type="empty">
              <property name="add-primary-clipboard" type="bool" value="true"/>
            </property>
          </property>
          <property name="plugin-10" type="string" value="xfce4-notes-plugin"/>
          <property name="notes" type="empty">
            <property name="global" type="empty">
              <property name="version" type="string" value="1.12.0"/>
            </property>
          </property>
          <property name="plugin-15" type="string" value="notification-plugin"/>
        </property>
      </channel>
    '';
  };
}
