{ config, lib, pkgs, ...}:

let

  common = "${config.home.homeDirectory}/nixos/home/dotfiles/common";
  mkOutOfStore = config.lib.file.mkOutOfStoreSymlink;

in

{
  
  # xdg.configFile = {
  #   # Isso cria ~/.config/nvim/init.vim
  #   "nvim/init.vim".source = ./dotfiles/nvim/init.vim;

  # direnv
  xdg.configFile = {
    "direnv/direnvrc".source = mkOutOfStore "${common}/direnv/direnvrc";
  };

  # Git
  home.file.".config/git/config".source = mkOutOfStore "${common}/git/config";

  # Kitty
  home.file.".config/kitty".source = mkOutOfStore "${common}/kitty";

  # nvim
  home.file.".config/nvim".source = mkOutOfStore "${common}/nvim";

  # user-dirs
  home.file = {
      ".config/user-dirs.conf".source = mkOutOfStore "${common}/user-dirs/user-dirs.conf";
      ".config/user-dirs.dirs".source = mkOutOfStore "${common}/user-dirs/user-dirs.dirs";
  };

}
