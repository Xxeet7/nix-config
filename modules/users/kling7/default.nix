{ den, ... }:
let
  userName = "kling7";
in
{
  # user aspect
  den.aspects.${userName} = {
    includes = with den.aspects; [
      den.batteries.define-user
      den.batteries.primary-user
      (den.batteries.user-shell "fish")

      xfce
      radiotray

      stylix

      geoclue
      redshift
      syncthing
      automatic-timezoned

      browser
      chat
      engineering
      games
      office
      secretStore
      shell
      media

      anki
      fcitx5
      localsend
      mindwtr
      obs

      steam
      ytm-rs
      flatpak
    ];

    user = {
      createHome = true;
      initialPassword = "test"; # change this after login
      isNormalUser = true;
    };

    nixos = {
      services.flatpak.packages = [
        "org.vinegarhq.Sober"
      ];
    };

    homeManager =
      { pkgs, config, ... }:
      {
        home.packages = with pkgs; [
          proton-vpn
          android-tools
          wakatime-cli
        ];

        home.file."Storage".source = config.lib.file.mkOutOfStoreSymlink "/mnt/Storage";

        programs = {
          chromium = {
            extensions = [
              { id = "ponfpcnoihfmfllpaingbgckeeldkhle"; } # Enchancer for youtube
              { id = "fmiaojphifnoicpdhhcniiekcpfbkidj"; } # Monochrome mode
              { id = "dladanhaondcgpahgiflodhckhoeohoe"; } # Intention
              { id = "fccbnilmkfoeamilfnaannjjocnnigio"; } # With Intention
              { id = "nfghbmabdoakhobmimnjkamfdnpfammn"; } # Focused youtube
              { id = "mndghaafpgiinfecbbbcppppiblmjepk"; } # Free game claimer
              { id = "ocmmbfdhomnkljmjkmafegefcgcfkefo"; } # MS Reward automizer
            ];
          };
        };
      };

    # user can provide NixOS configurations
    # to any host it is included on
    # provides.to-hosts.nixos = { pkgs, ... }: { };
  };
}
