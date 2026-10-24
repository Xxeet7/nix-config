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
    ];

    user = {
      createHome = true;
      initialPassword = "test"; # change this after login
      isNormalUser = true;
    };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          proton-vpn
          android-tools
          wakatime-cli
        ];
      };

    # user can provide NixOS configurations
    # to any host it is included on
    # provides.to-hosts.nixos = { pkgs, ... }: { };
  };
}
