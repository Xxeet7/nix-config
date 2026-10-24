{ den, ... }:
let
  hostName = "neo";
in
{
  # host aspect
  den.aspects.${hostName} = {
    includes = with den.aspects; [
      neo_hardware

      audio
      bluetooth
      boot
      tlp
      font
      network
    ];

    # host NixOS configuration
    nixos =
      { pkgs, ... }:
      {
        networking.hostName = hostName;

        environment.systemPackages = [ pkgs.hello ];
        programs.git.enable = true;
      };

    # host provides default home environment for its users
    # provides.to-users.homeManager =
    #   { pkgs, ... }:
    #   {
    #     home.packages = [ pkgs.vim ];
    #   };
  };
  den.hosts.x86_64-linux.neo.users.kling7 = { };
}
