{ config, lib, pkgs, ... }:
{
  imports = [
    ./gnome
    ./hyprland
    ./fonts
    ./virtualisation
  ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;

  programs = {
    bash = {
      interactiveShellInit = ''
        if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
           WLR_NO_HARDWARE_CURSORS=1 Hyprland #prevents cursor disappear when using Nvidia drivers
        fi
      '';
    };
  };

  programs.dconf.enable = true;

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
    ];
  };
}
