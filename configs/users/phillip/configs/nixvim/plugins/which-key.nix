# homepage: https://github.com/folke/which-key.nvim
# nixvim doc: https://nix-community.github.io/nixvim/plugins/which-key/index.html

{
  programs.nixvim.plugins.which-key = {
    enable = true;
    icons.group = "";
    window.border = "single";

    # Disable which-key when in neo-tree or telescope
    disable.filetypes = [
      "TelescopePrompt"
      "neo-tree"
      "neo-tree-popup"
    ];

    # Customize section names (prefixed mappings)
    registrations = {
      "<leader>b".name = "󰓩 Buffers";
      "<leader>bs".name = "󰒺 Sort Buffers";
      "<leader>d".name = " Debugger";
      "<leader>f".name = " Find";
      "<leader>g".name = "󰊢 Git";
      "<leader>l".name = " Language Tools";
      "<leader>m".name = " Markdown";
      "<leader>s".name = "󱂬 Session";
      "<leader>t".name = " Terminal";
      "<leader>u".name = " UI/UX";
    };
  };
}
