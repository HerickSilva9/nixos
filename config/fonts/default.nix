{ config, pkgs, ...}:

{

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  #  noto-fonts
  #  noto-fonts-color-emoji
  #  roboto
  #  open-sans
  #  font-awesome
  #  material-design-icons
  ];

}
