{ config, lib, pkgs, ...}:

{

  # Kitty
  home.file.".config/kitty".source = config.lib.file.mkOutOfStoreSymlink "/home/herick/nixos/home/dotfiles/kitty";

  # nvim
  home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "/home/herick/nixos/home/dotfiles/nvim";

  # user-dirs
  home.file = {
      ".config/user-dirs.conf".source = config.lib.file.mkOutOfStoreSymlink "/home/herick/nixos/home/dotfiles/user-dirs/user-dirs.conf";
      ".config/user-dirs.dirs".source = config.lib.file.mkOutOfStoreSymlink "/home/herick/nixos/home/dotfiles/user-dirs/user-dirs.dirs";
  };

}
