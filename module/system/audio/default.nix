{ ... }:
{
  services = {
    pipewire = {
      enable = true;
      pulse = {
        enable = true;
      };
    };

    geoclue2 = {
      enable = true;
    };
  };
}
