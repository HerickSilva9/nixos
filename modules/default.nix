{ config, pkgs, ...}:

{
  
  imports = [
    # ./appimage
    ./browsers
    ./cli
    ./cloud-storage
    ./development
    ./flake
    ./flatpak
    ./fonts
    ./gaming
    ./home-manager
    ./kitty
    ./messenger
    ./multimedia
    ./office
    ./remote-desktop
    ./security
  ];

}
