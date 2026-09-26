{ ... }:
{
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = false;
      };

      efi = {
        canTouchEfiVariables = true;
      };
    };
    kernelParams = [
      "quiet"
      "loglevel=3"
      "udev.log_level=3"
      "rd.udev.log_level=3"
      "systemd.show_status=auto"
      "rd.systemd.show_status=auto"
    ];
    initrd.verbose = false;
    consoleLogLevel = 0;
  };
}
