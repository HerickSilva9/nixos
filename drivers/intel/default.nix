{ config, pkgs, ... }:

{

  # Drivers
  services.xserver.videoDrivers = [ "modesetting" ];

  hardware.graphics.enable = true;

}
