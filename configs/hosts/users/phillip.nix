{ pkgs, ... }: {

  users.users = {
    phillip = {
      isNormalUser = true;
      description = "Phillip Hall";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
        firefox git home-manager
      ];
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      shell = pkgs.zsh;
    };
  };
}
