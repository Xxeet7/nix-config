{ den, ... }:
{
  den.aspects.office = {
    includes = with den.aspects; [
      craftapps
      onlyoffice
      # zotero
      mendeley
    ];
  };
}
