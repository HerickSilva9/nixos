{ config, pkgs, ...}:

{
    imports = [
        ../configuration.nix
        ../audio
        ../core
        ../desktop/kde
        ../modules
        ../virtualisation
    ];
}