{ config, pkgs, ...}:

{
    # Enable flatpak
    services.flatpak.enable = true;

    # Add the Flathub repository
    systemd.services.flatpak-repo = {
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.flatpak ];
      script = ''
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
      '';
    };
}