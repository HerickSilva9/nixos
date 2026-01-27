{config, pkgs, ...}:

{

environment.systemPackages = with pkgs; [
    # Terminal File Manager
    yazi

    # Diversos
    wget
    tree
    zip unzip
    bat
    element-desktop
  ];

  nix.gc = {
    automatic = true;
    dates = "daily";
    persistent = true;
  };

}
