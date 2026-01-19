# Flakes
Primeira instalação
```
sudo nixos-rebuild boot --flake.#{profile} --install-bootloader
```

Rebuilds subsequentes
```
sudo nixos-rebuild switch --flake.#{profile}
```

Atualizar
```
nix flake update
sudo nixos-rebuild switch --flake.#{profile}
```

# Configuration.nix
Primeira Instalação
```
# sudo nixos-rebuild boot -I nixos-config=/home/herick/nix-gnome/configuration.nix --install-bootloader
```

Rebuilds subsequentes
```
sudo nixos-rebuild switch -I nixos-config=/home/herick/nix-gnome/configuration.nix
```

Atualizar
```
sudo nix-channel --update
sudo nixos-rebuild switch
```

# Gerações
Listar gerações
```
sudo nixos-rebuild list-generations
```

# Limpeza sistema
Limpeza leve do lixo
```
nix-collect-garbage
```

```
nix-collect-garbage -d
```

Deleta gerações antigas
```
sudo nix-collect-garbage -d
```


Links úteis

Unofficial NixOS Wiki https://nixos.wiki
Official NixOS Wiki https://wiki.nixos.org
Nix Documentation https://nix.dev
NixOS Manual https://nixos.org/manual/nixos/stable/
Nixpkgs Manual https://nixos.org/manual/nixpkgs/stable/
Nix Manual https://nix.dev/reference/nix-manual.html
Nix tools https://nix.tools/
Nix Learn(?) https://nixos.org/learn/
NixOS Discourse Guides https://discourse.nixos.org/c/howto/15
Nix Pills https://nixos.org/guides/nix-pills/