{ config, lib, pkgs, ...}:

let

  home = "${config.home.homeDirectory}";
  mkOutOfStore = config.lib.file.mkOutOfStoreSymlink;

in

{

  # direnv
  home.file.".config/direnv/direnvrc".source = mkOutOfStore "${home}/nixos/home/dotfiles/direnv/direnvrc";

  # Git
  home.file.".config/git/config".source = mkOutOfStore "${home}/nixos/home/dotfiles/git/config";

  # Kitty
  home.file.".config/kitty".source = mkOutOfStore "${home}/nixos/home/dotfiles/kitty";

  # nvim
  home.file.".config/nvim".source = mkOutOfStore "${home}/nixos/home/dotfiles/nvim";

  # user-dirs
  home.file = {
      ".config/user-dirs.conf".source = mkOutOfStore "${home}/nixos/home/dotfiles/user-dirs/user-dirs.conf";
      ".config/user-dirs.dirs".source = mkOutOfStore "${home}/nixos/home/dotfiles/user-dirs/user-dirs.dirs";
  };

  imports = [
  ];

}
