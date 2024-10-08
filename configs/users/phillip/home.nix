{ inputs, outputs, lib, config, pkgs, ... }: {
  imports = [
    ./configs/git.nix
    ./configs/nixvim
    ./configs/stylix.nix
    ./configs/tmux.nix
    ./configs/zsh.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "phillip";
    homeDirectory = "/home/phillip";
  };

  home.packages = with pkgs; [ fd lazygit ];

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "None";
        padding.x = 10;
        padding.y = 10;
        blur = true;
      };
    };
  };
  programs.vscode.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
