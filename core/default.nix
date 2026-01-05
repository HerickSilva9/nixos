{ config, pkgs, ... }:

{

  imports = [
    ./bootloader
  ];

  # Enable swap memory.
  swapDevices = [{
    device = "/swapfile";
    size = 8 * 1024;
  }];

  boot.kernelParams = [
    "quiet" "loglevel=3"
  ];

}