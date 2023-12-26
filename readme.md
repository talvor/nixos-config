# NixOS Config

This repo contains my NixOS + home-manager config.  
Based on https://github.com/Misterio77/nix-starter-configs

## Get config
```shell
nix-shell -p git home-manager
git clone https://github.com/talvor/nixos-config.git
```

## Usage

- Run `sudo nixos-rebuild switch --flake .#nixos` to apply your system
  configuration.

- Run `home-manager switch --flake .#phillip@nixos` to apply your home configuration
