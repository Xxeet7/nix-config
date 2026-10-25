{
  den.aspects.bluetooth = {
    nixos =
      _:
      {
        services.blueman.enable = true;
        hardware.bluetooth.enable = true;
      };
  };
}
