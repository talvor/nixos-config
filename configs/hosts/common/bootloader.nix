{ inputs, pkgs, ... }:
{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        theme = inputs.nixos-grub-themes.packages.${pkgs.system}.nixos;
      };
    };
    plymouth = {
      enable = true;
    };
  };
}
