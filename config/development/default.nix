{ config, pkgs, pkgs-unstable, ... }:

{

  environment.systemPackages = with pkgs; [

  # Git
  git

  # Python
  (python313.withPackages (ps: with ps; [
    pip
    virtualenv
    # tkinter pyqt5
  ]))
  uv
  # python3 python3Packages.tkinter python3Packages.pip python3Packages.virtualenv uv
  # kdePackages.kdialog

  # Rust
  rustup
  ## xorg.libX11 xorg.libXrandr xorg.libXi wayland libxkbcommon mesa libGL libx11

  # Node.js
  # nodePackages_latest.nodejs
  
  # Visual Studio Code
  vscode

  # Neovim
  neovim vim gcc wl-clipboard fzf

  # Zed
  # zed-editor

  # IDE for writing GNOME-based software
  gnome-builder

  ];

  programs.nix-ld.enable = true;
 
  environment.sessionVariables = {
    LD_LIBRARY_PATH = "$NIX_LD_LIBRARY_PATH";
    PATH = "$HOME/.cargo/bin";
  };

}
