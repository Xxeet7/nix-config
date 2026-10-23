{
  den.aspects.redshift = {
    homeManager =
      { ... }:
      {
        services = {
          redshift = {
            enable = true;
            provider = "geoclue2";
          };
        };
      };
  };
}
