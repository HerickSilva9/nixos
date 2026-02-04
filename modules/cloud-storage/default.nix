{ config, pkgs, ...}:

{

  environment.systemPackages = with pkgs; [
    seafile-client
  ];

}
