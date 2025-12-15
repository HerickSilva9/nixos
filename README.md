
Primeira Instalação
```
sudo nixos-rebuild boot -I nixos-config=/home/herick/nix-gnome/configuration.nix --install-bootloader
```

Rebuilds subsequentes
```
sudo nixos-rebuild switch -I nixos-config=/home/herick/nix-gnome/configuration.nix
```