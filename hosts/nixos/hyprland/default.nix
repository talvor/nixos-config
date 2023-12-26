{pkgs, ...}:
{
  programs.hyprland = {    
    enable = true;    
    xwayland.enable = true;  
  }; 

  environment.systemPackages = with pkgs; [
    swww
    wofi
    swaylock-effects
    xdg-desktop-portal-hyprland
    xwayland
    dunst
    pavucontrol
    rofi
    grim
    slurp
    wl-clipboard
    pamixer
    waybar
  ];
}


