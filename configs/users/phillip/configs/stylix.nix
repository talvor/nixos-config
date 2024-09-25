{ pkgs, config, ... }: {
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";
    polarity = "dark";

    cursor = {
      package = pkgs.catppuccin-cursors.frappeLight;
      name = "catppuccin-frappe-light-cursors";
    };

    fonts = {
      monospace = {
        package =
          pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; };
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };

      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sizes = {
        applications = 10;
        terminal = 12;
        desktop = 10;
        popups = 10;
      };

    };

    opacity = {
      applications = 1.0;
      terminal = 0.9;
      desktop = 1.0;
      popups = 1.0;
    };

    image = ../../../../wallpapers/landscape.png;
  };
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
