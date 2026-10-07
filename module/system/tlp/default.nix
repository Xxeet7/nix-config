{ ... }:
{
  services = {
    tlp = {
      enable = true;
      pd.enable = true;
      settings = {
        # battery stop charging at 80
        START_CHARGE_THRESH_BAT0 = 0;
        STOP_CHARGE_THRESH_BAT0 = 80;

        # extend battery runtime
        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        PLATFORM_PROFILE_ON_BAT = "low-power";
        CPU_BOOST_ON_BAT = 0;
        CPU_BOOST_ON_SAV = 0;
        CPU_HWP_DYN_BOOST_ON_BAT = 0;
        CPU_HWP_DYN_BOOST_ON_SAV = 0;
      };
    };
  };
}
