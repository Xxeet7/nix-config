{ pkgs, ... }: {
  home.packages = with pkgs; [
    proton-vpn
    radiotray-ng
  ];

  home.file.".config/radiotray-ng/bookmarks.json" = {
    enable = true;
    force = true;
    text = ''
      [
              {
                      "group" : "root",
                      "stations" : []
              },
              {
                      "group" : "Lofi",
                      "stations" : 
                      [
                              {
                                      "name" : "Yumi Co. Radio",
                                      "url" : "https://yumicoradio.net/stream_aac64"
                              }
                      ]
              }
      ]
    '';
  };
}
