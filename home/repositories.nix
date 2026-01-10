{ config, pkgs, ...}:

{

  ## Wallpapers

  # orangc's walls, catppuccin-mocha edition
  home.file."imagens/walls-catppuccin-mocha" = {
    source = pkgs.fetchFromGitHub {
      owner = "orangci";
      repo = "walls-catppuccin-mocha";
      rev = "master";
      sha256 = "sha256-N+MZHSRcwOldS5Ai8B3YfKquKs9oeUW/GkV1iKM5+i8";
    };
  recursive = true;
  };

  # Dracula Wallpaper
  # Awesome wallpapers with the theme and colors of Dracula Theme!
  # home.file."imagens/DraculaWallpapers" = {
  #   source = pkgs.fetchFromGitHub {
  #     owner = "dracula";
  #     repo = "wallpaper";
  #     rev = "master";
  #     sha256 = "sha256-P0MfGkVap8wDd6eSMwmLhvQ4/7Z+pNmgY7O+qt9C1bg";
  #   };
  # recursive = true;
  # };

}