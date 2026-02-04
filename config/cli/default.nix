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
  ];

}
