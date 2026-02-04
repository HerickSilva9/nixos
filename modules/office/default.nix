{ config, pkgs, ...}:

{
  
  environment.systemPackages = with pkgs; [
    # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
    # libreoffice-qt-fresh

    # Office suite that combines text, spreadsheet and presentation editors allowing to create, view and edit local documents
    # onlyoffice-desktopeditors

    # GNOME Office Spreadsheet
    # gnumeric

    # Terminal Excel viewer with an interactive TUI
    # xleak
    ];

}
