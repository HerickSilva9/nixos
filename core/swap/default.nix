{ config, pkgs, ... }:

{

  # Enable swap memory.
  swapDevices = [{
    device = "/swapfile";
    size = 8 * 1024;
  }];

}