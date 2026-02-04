{ config, pkgs, ...}:

{
    imports = [
        ../common.nix
        ../../core/drivers/nvidia
        ./hardware-configuration.nix
    ];
}