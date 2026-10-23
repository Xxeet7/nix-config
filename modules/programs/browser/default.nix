{
  den.aspects.browser = {
    homeManager =
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
              { id = "dacakhfljjhgdfdlgjpabkkjhbpcmiff"; } # Varia (aria2)
              { id = "oboonakemofpalcgghocfoadofidjkkk"; } # Keepassxc
              { id = "ponfpcnoihfmfllpaingbgckeeldkhle"; } # Enchancer for youtube
              { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # Dark reader
              { id = "fmiaojphifnoicpdhhcniiekcpfbkidj"; } # Monochrome mode
              { id = "dladanhaondcgpahgiflodhckhoeohoe"; } # Intention
              { id = "fccbnilmkfoeamilfnaannjjocnnigio"; } # With Intention
              { id = "nfghbmabdoakhobmimnjkamfdnpfammn"; } # Focused youtube
            ];
            commandLineArgs = [
              "--password-store=basic"
              "--process-per-site"
              "--enable-parallel-downloading"
            ];
          };
        };
      };
  };
}
