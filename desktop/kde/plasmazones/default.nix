{ config, pkgs, ... }:

let
  plasmazones = import ./PlasmaZones-package.nix { inherit pkgs; };
in
{
  environment.systemPackages = [ plasmazones ];

  systemd.user.services.plasmazones = {
    description = "PlasmaZones Window Snapping Daemon";
    documentation = [ "https://github.com/fuddlesworth/PlasmaZones" ];

    wantedBy = [ "plasma-workspace.target" ];
    after = [ "plasma-workspace.target" ];
    partOf = [ "plasma-workspace.target" ];

    serviceConfig = {
      Type = "simple";
      ExecStart = "${plasmazones}/bin/plasmazonesd";
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}