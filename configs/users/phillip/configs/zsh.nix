{ pkgs, lib, config, ... }:

{
  # Allow HM to manage zsh config
  programs.zsh = {
    enable = true;
    
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
    };
  };
}