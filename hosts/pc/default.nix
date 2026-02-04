{ config, pkgs, ...}:

{
    imports = [
        ../common.nix
        ../../drivers/nvidia
        ./hardware-configuration.nix
    ];
}