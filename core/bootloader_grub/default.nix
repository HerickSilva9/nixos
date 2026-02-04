{ config, pkgs, ... }:

{

  # Enable the GRUB bootloader.
  boot.loader.grub = {
    enable = true;
    efiSupport =  true;
    useOSProber = true;
    device = "nodev";
  };
  boot.loader.efi.canTouchEfiVariables = true;

}
