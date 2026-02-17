{ config, pkgs, ...}:

{

  virtualisation.docker = {
    enable = true;
    # enableOnBoot = false;  # TODO corrigir internet no container docker após reinício do sistema
  };

  environment.systemPackages = with pkgs; [
    docker-compose
  ];

  users.users.herick = {
    extraGroups = [ "docker" ];
  };

  boot.kernelModules = [ "ip_tables" "iptable_nat" ];

}
