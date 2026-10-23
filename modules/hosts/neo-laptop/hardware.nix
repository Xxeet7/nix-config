let
  hostName = "neo";
in
{
  den.aspects."${hostName}_hardware" = {
    nixos =
      { pkgs, ... }:
      {
        fileSystems."/".device = "/dev/fake";
        fileSystems."/".fsType = "auto";
      };
  };
}
