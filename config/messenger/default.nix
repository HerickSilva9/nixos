{config, pkgs, ...}:

{

  environment.systemPackages = with pkgs; [
    element-desktop  # Feature-rich client messenger for Matrix.org
  ];

}