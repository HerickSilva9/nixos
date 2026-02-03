{config, pkgs, ...}:

{

  environment.systemPackages = with pkgs; [
    # Feature-rich client messenger for Matrix.org
    element-desktop
  ];

}