{ config, pkgs, pkgs-unstable, ... }:

{

  environment.systemPackages = with pkgs; [

  git

  # Python
  python3 python3Packages.pip python3Packages.virtualenv uv

  # Rust
  rustup

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
 
  environment.sessionVariables = {
    LD_LIBRARY_PATH = "$NIX_LD_LIBRARY_PATH";
    PATH = "$HOME/.cargo/bin";
  };

}
