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
  # ./gaming
    ./kitty
    ./multimedia
    ./remote-desktop

    # Arquivos
    ./common.nix
  ];

}
