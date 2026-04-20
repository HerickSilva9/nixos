{ config, pkgs, ...}:

{
  
  imports = [
    # ./appimage
    ./browsers
    ./cli
    ./cloud-storage
    ./development
    ./files
    ./flake
    ./flatpak
    ./fonts
    ./gaming
    ./home-manager
    ./kitty
    ./klassy
    ./messenger
    ./multimedia
    ./office
    ./remote-desktop
    ./security
  ];

}
