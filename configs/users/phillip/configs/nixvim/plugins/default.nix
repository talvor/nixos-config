{inputs, ...}: {
  imports = [
    ./alpha.nix
    ./autoclose.nix
    ./bufferline.nix
    ./comment.nix
    ./gitsigns.nix
    ./lazygit.nix
    ./neo-tree.nix
    ./noice.nix
    ./notify.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
    lualine.enable = true;
  };
}
