{
  den.aspects.greeter = {
    nixos =
      { ... }:
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
