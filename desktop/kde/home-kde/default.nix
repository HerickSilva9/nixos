{ config, ...}:

let

  home = "${config.home.homeDirectory}";
  mkOutOfStore = config.lib.file.mkOutOfStoreSymlink;
  home-kde = "${home}/nixos/desktop/kde/home-kde";

in

{

  # kde
  home.file = {

    # Folders
    ".config/autostart".source = mkOutOfStore "${home-kde}/config/autostart";
    ".config/dconf".source = mkOutOfStore "${home-kde}/config/dconf";
    ".config/gtk-3.0".source = mkOutOfStore "${home-kde}/config/gtk-3.0";
    ".config/gtk-4.0".source = mkOutOfStore "${home-kde}/config/gtk-4.0";
    ".config/kdedefaults".source = mkOutOfStore "${home-kde}/config/kdedefaults";
    ".config/xsettingsd".source = mkOutOfStore "${home-kde}/config/xsettingsd";
    ".local/share/remmina".source = mkOutOfStore "${home-kde}/local/remmina";

    # Files
    # ".gtkrc-2.0".source = mkOutOfStore "${home-kde}/.gtkrc-2.0";
    ".config/dolphinrc".source = mkOutOfStore "${home-kde}/config/dolphinrc";
    ".config/gtkrc".source = mkOutOfStore "${home-kde}/config/gtkrc";
    ".config/gtkrc-2.0".source = mkOutOfStore "${home-kde}/config/gtkrc-2.0";
    ".config/kcminputrc".source = mkOutOfStore "${home-kde}/config/kcminputrc";
    ".config/kdeglobals".source = mkOutOfStore "${home-kde}/config/kdeglobals";
    ".config/kwinrc".source = mkOutOfStore "${home-kde}/config/kwinrc";
    ".config/plasma-org.kde.plasma.desktop-appletsrc".source = mkOutOfStore "${home-kde}/config/plasma-org.kde.plasma.desktop-appletsrc";
    ".config/Trolltech.conf".source = mkOutOfStore "${home-kde}/config/Trolltech.conf";    
  };

  home.file.".gtkrc-2.0" = { source = mkOutOfStore "${home-kde}/.gtkrc-2.0"; force = true; };

}
