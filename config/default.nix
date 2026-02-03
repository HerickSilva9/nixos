{ config, pkgs, ...}:

{
  
  imports = [
  # Diretórios
  # ./appimage
    ./browsers
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

    # Arquivos
    ./common.nix
  ];

}
