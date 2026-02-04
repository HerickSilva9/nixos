{ config, pkgs, ...}:

{
    imports = [
        ../common.nix
        ../../drivers/intel
        ./hardware-configuration.nix
    ];
}