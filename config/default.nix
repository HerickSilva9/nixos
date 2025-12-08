{ config, pkgs, ...}:

{
  
  imports = [
  # Diretórios
  # ./appimage
    ./browsers
    ./cloud-storage
    ./development
    ./fonts
  # ./gaming
    ./kitty
    ./remote-desktop

    # Arquivos
    ./common.nix
  ];

}
