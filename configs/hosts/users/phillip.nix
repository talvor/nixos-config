{ pkgs, ... }: {

  users.users = {
    phillip = {
      isNormalUser = true;
      description = "Phillip Hall";
      extraGroups = [ "networkmanager" "wheel" "podman" ];
      packages = with pkgs; [
        firefox git home-manager neofetch htop
      ];
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      shell = pkgs.zsh;
    };
  };
}
