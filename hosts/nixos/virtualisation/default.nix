{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
    libvirtd.enable = true;
  };

  users.groups.docker.members = [ "phillip" ];
  users.groups.libvirtd.members = [ "phillip" ];

  environment.systemPackages = with pkgs; [
    virt-manager
  ];
}
