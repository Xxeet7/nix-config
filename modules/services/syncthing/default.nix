{
  den.aspects.syncthing = {
    homeManager =
      { ... }:
      {
        services = {
          syncthing = {
            enable = true;
          };
        };
      };
  };
}
