# homepage: https://github.com/lewis6991/gitsigns.nvim
# nixvim doc: https://nix-community.github.io/nixvim/plugins/gitsigns/index.html
{
  programs.nixvim.plugins.lazygit = {
    enable = true;
    settings = {
      floating_window_use_plenary = 1;
    };
  };

  # programs.nixvim = {
  #   keymaps = [
  #     {
  #       mode = "n";
  #       key = "<leader>gg";
  #       action.__raw = "<cmd>LazyGit<cr>";
  #       options.desc = "Lazygit";
  #     }
  #   ];
  # };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<cr>";
      options.desc = "LazyGit";
    }
  ];
}
