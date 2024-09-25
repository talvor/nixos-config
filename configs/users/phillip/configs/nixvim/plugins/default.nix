{inputs, ...}: {
  imports = [
    ./alpha.nix
    ./autoclose.nix
    ./bufferline.nix
    ./comment.nix
    ./gitsigns.nix
    ./indent-blankline.nix
    ./lazygit.nix
    ./lsp.nix
    ./mini.nix
    ./neo-tree.nix
    ./noice.nix
    ./notify.nix
    ./nvim-ufo.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
    lualine.enable = true;
  };
}
