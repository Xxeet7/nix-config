{
  den.aspects.geoclue = {
    nixos =
      _:
      {
        services = {
          geoclue2 = {
            enable = true;
          };
        };
      };
  };
}
