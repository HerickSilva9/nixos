{ config, pkgs, ... }:

{

  nix.gc = {
    automatic = true;
    dates = "daily";
    persistent = true;
  };

}