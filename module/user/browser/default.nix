{ pkgs, ... }:
{
  home.packages = with pkgs; [
    varia
  ];
  programs = {
    aria2 = {
      enable = true;
    };
    chromium = {
      enable = true;
      extensions = [
        { id = "hfjbmagddngcpeloejdejnfgbamkjaeg"; } # Vimium c
        { id = "jlmpjdjjbgclbocgajdjefcidcncaied"; } # Dailydev
        { id = "chphlpgkkbolifaimnlloiipkdnihall"; } # Onetab
        { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; } # UBlock origin lite
        { id = "edacconmaakjimmfgnblocblbcdcpbko"; } # Session buddy
        { id = "dacakhfljjhgdfdlgjpabkkjhbpcmiff"; } # Varia (aria2)
        { id = "oboonakemofpalcgghocfoadofidjkkk"; } # Keepassxc
        { id = "ponfpcnoihfmfllpaingbgckeeldkhle"; } # Enchancer for youtube
        { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # Dark reader
      ];
      commandLineArgs = [
        "--password-store=basic"
        "--process-per-site"
        "--enable-parallel-downloading"
      ];
    };
  };
}
