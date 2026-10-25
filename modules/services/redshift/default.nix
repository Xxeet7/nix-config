{
  den.aspects.redshift = {
    homeManager =
      _:
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
