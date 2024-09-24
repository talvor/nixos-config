{inputs, ...}: {
  imports = [
    ./alpha.nix
    ./bufferline.nix
    ./gitsigns.nix
    ./lazygit.nix
    ./neo-tree.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
    lualine.enable = true;
  };
}