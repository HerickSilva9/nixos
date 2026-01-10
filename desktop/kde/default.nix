{ config, pkgs, ...}:

{

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true; # Optional .

  environment.systemPackages = with pkgs; [
    kdePackages.plasma-browser-integration
    papirus-icon-theme
    catppuccin-kde 
  ];


  environment.plasma6.excludePackages = with pkgs; [
    # kdePackages.aurorae
    # kdePackages.plasma-browser-integration
    # kdePackages.plasma-workspace-wallpapers
    # kdePackages.konsole
    # kdePackages.kwin-x11
    # kdePackages.(lib.getBin qttools) # Expose qdbus in PATH
    # kdePackages.ark
    kdePackages.elisa
    # kdePackages.gwenview
    # kdePackages.okular
    # kdePackages.kate
    # kdePackages.ktexteditor # provides elevated actions for kate
    # kdePackages.khelpcenter
    # kdePackages.dolphin
    # kdePackages.baloo-widgets # baloo information in Dolphin
    # kdePackages.dolphin-plugins
    # kdePackages.spectacle
    # kdePackages.ffmpegthumbs
    # kdePackages.krdp
  ];

}
