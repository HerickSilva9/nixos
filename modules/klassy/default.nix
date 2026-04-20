{config, pkgs, ...}:

{

  environment.systemPackages = with pkgs; [
    klassy
  ];

}
