{
  den.aspects.lightdm = {
    nixos =
      _:
      {
        services = {
          xserver = {
            displayManager = {
              lightdm = {
                enable = true;
              };
            };
          };
        };
      };
  };
}
