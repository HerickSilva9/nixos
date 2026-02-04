{ config, pkgs, ...}:

{
    imports = [
        ../common.nix
        ../../core/drivers/intel
        ./hardware-configuration.nix
    ];
}