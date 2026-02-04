{ config, pkgs, ... }:

{

  imports = [
    ./bootloader_grub
    ./gargabe_collector
    ./kernel_params
    ./swap
  ];

  # Drivers são importados em hosts/{host}

}