{ config, lib, pkgs, ... }:

{
  imports = [ 
  ];
  
  home.packages = with pkgs; [
    nordic
  ];

  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.nordic;
    name = "Nordic-cursors";
    size = 16;
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "Nordic-bluish";
      package = pkgs.nordic;
    };

    theme = {
      name = "Nordic-darker";
      package = pkgs.nordic;
    };
  };
}
