{ config, pkgs, pkgs-unstable, ... }:

{

  environment.systemPackages = with pkgs; [

  ## Version control
  # Git
  git


  ## Languages
  # Python
  # (python313.withPackages (ps: with ps; [
  #   # tkinter pyqt5
  # ]))
  # uv
  # python3 python3Packages.tkinter

  # Rust
  rustup

  # Node.js
  # nodePackages_latest.nodejs
  

  ## Build
  # Build and publish Rust crates Python packages
  # maturin

  # Tool to build flatpaks from source
  # flatpak-builder


  ## Editors
  # Visual Studio Code
  vscode

  # Neovim
  neovim gcc wl-clipboard fzf
  
  # vim
  # vim

  # Zed
  # zed-editor

  # IDE for writing GNOME-based software
  # gnome-builder

  ];

  ## Development environments
  # Whether to enable direnv integration
  programs.direnv.enable = true;
  programs.nix-ld.enable = true;
 
  environment.sessionVariables = {
    LD_LIBRARY_PATH = "$NIX_LD_LIBRARY_PATH";
    PATH = "$HOME/.cargo/bin";
    PYTHON_HISTORY = "$HOME/.local/share/python/history";
    HISTFILE = "$HOME/.local/share/bash/history";
  };

}
