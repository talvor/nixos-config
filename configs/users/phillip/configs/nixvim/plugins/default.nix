{inputs, ...}: {
  imports = [
    ./alpha.nix
    ./bufferline.nix
    ./neo-tree.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins.web-devicons.enable = true;
}