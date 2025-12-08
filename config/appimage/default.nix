{ config, pkgs, ... }:

{
    
  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  environment.systemPackages = with pkgs; [
  #  gnomeExtensions.appimage-manager  # incompatible version
  ];

}