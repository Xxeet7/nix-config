{ den, ... }:
let
  userName = "kling7";
in
{
  # user aspect
  den.aspects.${userName} = {
    includes = [
      den.batteries.define-user
      den.batteries.primary-user
      (den.batteries.user-shell "fish")
    ];

    user = {
      createHome = true;

      extraGroups = [
        "wheel"
        "networkmanager"
      ];

      initialPassword = "test"; # change this after login
      isNormalUser = true;
    };

    # homeManager =
    #   { pkgs, ... }:
    #   {
    #     home.packages = with pkgs; [
    #       htop
    #       cowsay
    #     ];
    #   };

    # user can provide NixOS configurations
    # to any host it is included on
    # provides.to-hosts.nixos = { pkgs, ... }: { };
  };
}
