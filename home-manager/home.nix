{
  inputs,
  lib,
  config,
  pkgs,
  hyprland,
  ...
}: {
  imports = [
    # hyprland.homeManagerModules.default
    ./programs
    ./scripts
  ];

  nixpkgs = {
    overlays = [
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "phillip";
    homeDirectory = "/home/phillip";
  };

  home.packages = with pkgs; [
    #System tools
    stow
    gcc
    gnumake
    unzip
    wget
    nodejs_21
    python3
    python311Packages.pip

    #neovim tools
    neovim
    ripgrep
    lazygit
    gcc
    ripgrep
    fd
    fzf

    #User Apps
    brave
    kitty
    vscode
  ];

  home.file."${config.home.homeDirectory}/Pictures/wallpaper" = {
    source = ./wallpaper;
    recursive = true;
  };
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
