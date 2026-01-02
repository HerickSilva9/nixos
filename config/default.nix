{ config, pkgs, ...}:

{
  
  imports = [
  # Diretórios
  # ./appimage
    ./browsers
    ./cloud-storage
    ./development
    ./flake
    ./fonts
    ./gaming
    ./home-manager
    ./kitty
    ./multimedia
    ./remote-desktop
    ./security

    # Arquivos
    ./common.nix
  ];

}
