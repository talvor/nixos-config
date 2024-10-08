# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix

    ../common/audio.nix
    ../common/auto-upgrade.nix
    ../common/bootloader.nix
    ../common/gc.nix
    ../common/gnome.nix
    ../common/internationalisation.nix
    ../common/networking.nix
    ../common/nix-settings.nix
    ../common/nixpkgs.nix
    ../common/services.nix
    ../common/theme.nix
    ../common/time.nix
    ../common/yubikey-gpg.nix

    ../users/phillip.nix
  ];


  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
