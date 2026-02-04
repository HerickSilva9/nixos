{ config, pkgs, ...}:

{

  xdg.enable = true;

  imports = [
    ./common
  ];

}
