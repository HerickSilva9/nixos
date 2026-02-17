{ config, pkgs, ...}:

{
  imports = [
    ./docker
    ./podman
    ./virt-manager
  ];
}
