{
  den.aspects.zotero = {
    homeManager = { pkgs, ... }: {
      home.packages = with pkgs; [
        zotero
      ];
    };
  };
}
