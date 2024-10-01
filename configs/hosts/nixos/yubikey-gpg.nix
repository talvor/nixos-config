{ config, lib, pkgs, ... }:

{
  programs.ssh.startAgent = false;

  services.pcscd.enable = true;

  environment.systemPackages = with pkgs; [
    gnupg
    yubikey-manager
  ];

  environment.shellInit = ''
    gpg-connect-agent /bye
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  '';

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    enableExtraSocket = true;
    pinentryPackage = pkgs.pinentry-gnome3;
  };
}
