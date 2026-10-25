{
  den.aspects.greeter = {
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
