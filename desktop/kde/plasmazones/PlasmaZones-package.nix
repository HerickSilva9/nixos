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
    version = "v1.3.2";

    src = fetchFromGitHub {
      owner = "fuddlesworth";
      repo = "PlasmaZones";
      rev = "v1.3.2";
      sha256 = "sha256-5uli5/KTw0/Wwv1Z7x7BX6bpAduUeSUQlXosh+kznNQ=";
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