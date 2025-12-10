{ config, pkgs, pkgs-unstable, ... }:

{

  environment.systemPackages = with pkgs; [

  git

  # Python
  python3 python3Packages.pip python3Packages.virtualenv uv

  # Rust
  # rustup

  # Node.js
  # nodePackages_latest.nodejs
  
  # Visual Studio Code
  vscode

  # Neovim
  neovim vim gcc wl-clipboard fzf

  # Zed
  # zed-editor

  ];

  programs.nix-ld.enable = true;

}
