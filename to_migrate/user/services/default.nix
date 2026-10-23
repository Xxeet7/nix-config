{ pkgs, ... }: {
  services = {
    redshift = {
      enable = true;
      provider = "geoclue2";
    };
    syncthing = {
      enable = true;
    };
  };
}
