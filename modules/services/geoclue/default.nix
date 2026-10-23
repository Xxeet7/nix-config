{
  den.aspects.geoclue = {
    nixos =
      { ... }:
      {
        services = {
          geoclue2 = {
            enable = true;
          };
        };
      };
  };
}
