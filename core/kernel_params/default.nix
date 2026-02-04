{ config, pkgs, ... }:

{

  boot.kernelParams = [
    "quiet" "loglevel=3"
  ];

}