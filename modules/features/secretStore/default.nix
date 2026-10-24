{ den, ... }:
{
  den.aspects.secretStore = {
    includes = with den.aspects; [
      keepassxc
      git-credential-keepassxc
    ];
  };
}
