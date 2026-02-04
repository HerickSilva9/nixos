{ config, pkgs, ...}:

{
    imports = [
        ../configuration.nix
        ../audio
        ../core
        ../config
        ../desktop/kde
        ../virtualisation
    ];
}