# PlasmaZones-package.nix
{ pkgs }:

pkgs.callPackage (
  {
    stdenv,
    fetchFromGitHub,
    cmake,
    kdePackages,
  }:

  stdenv.mkDerivation {
    pname = "PlasmaZones";
    version = "v1.7.0";

    src = fetchFromGitHub {
      owner = "fuddlesworth";
      repo = "PlasmaZones";
      rev = "v1.7.0";
      sha256 = "sha256-fqs11tv8ejRBszWKhNHo1lozI00lsk7aNdOBwqxCG5Y=";
    };

    nativeBuildInputs = [
      cmake
      kdePackages.extra-cmake-modules
      kdePackages.wrapQtAppsHook
    ];

    buildInputs = [
      kdePackages.qtbase
      kdePackages.qtdeclarative
      kdePackages.kconfig
      kdePackages.kconfigwidgets
      kdePackages.kcoreaddons
      kdePackages.kcmutils
      kdePackages.kwindowsystem
      kdePackages.kglobalaccel
      kdePackages.knotifications
      kdePackages.layer-shell-qt
      kdePackages.kwin
    ];
  }
) { }
