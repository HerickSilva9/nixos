{ config, pkgs, ...}:

{
  
  imports = [
    # Diretórios
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
