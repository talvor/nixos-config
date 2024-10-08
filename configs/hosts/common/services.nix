{ pkgs, ... }: {

  programs.zsh.enable = true;
  
  services.printing.enable = true;
  
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

}
