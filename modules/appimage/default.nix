{ config, pkgs, ... }:

{
    
  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  environment.systemPackages = with pkgs; [
  steam-run
  #  gnomeExtensions.appimage-manager  # incompatible version
  ];

}
