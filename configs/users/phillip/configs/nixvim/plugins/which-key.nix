# homepage: https://github.com/folke/which-key.nvim
# nixvim doc: https://nix-community.github.io/nixvim/plugins/which-key/index.html

{
  programs.nixvim.plugins.which-key = {
    enable = true;
    # icons.group = "";
    settings.win.border = "single";

    # Disable which-key when in neo-tree or telescope
    settings.disable.ft = [
      "TelescopePrompt"
      "neo-tree"
      "neo-tree-popup"
    ];

    # Customize section names (prefixed mappings)
    settings.spec = [
      {
        __unkeyed-1 = "<leader>b";
        group = "Buffers";
        icon = "󰓩 ";
      }
      {
        __unkeyed-1 = "<leader>sb";
        group = "Sort Buffers";
        icon = "󰒺 ";
      }
      {
        __unkeyed-1 = "<leader>d";
        group = "Debugger";
        icon = " ";
      }
      {
        __unkeyed-1 = "<leader>f";
        group = "Find";
        icon = " ";
      }
      {
        __unkeyed-1 = "<leader>g";
        group = "Git";
        icon = "󰊢 ";
      }
      {
        __unkeyed-1 = "<leader>l";
        group = "Language Tools";
        icon = " ";
      }
      {
        __unkeyed-1 = "<leader>m";
        group = "Markdown";
        icon = " ";
      }
      {
        __unkeyed-1 = "<leader>s";
        group = "Session";
        icon = "󱂬 ";
      }
      {
        __unkeyed-1 = "<leader>t";
        group = "Terminal";
        icon = " ";
      }
      {
        __unkeyed-1 = "<leader>u";
        group = "UI/UX";
        icon = " ";
      }
    ];
    # registrations = {
    #   "<leader>b".name = "󰓩 Buffers";
    #   "<leader>bs".name = "󰒺 Sort Buffers";
    #   "<leader>d".name = " Debugger";
    #   "<leader>f".name = " Find";
    #   "<leader>g".name = "󰊢 Git";
    #   "<leader>l".name = " Language Tools";
    #   "<leader>m".name = " Markdown";
    #   "<leader>s".name = "󱂬 Session";
    #   "<leader>t".name = "";
    #   "<leader>u".name = " UI/UX";
    # };
  };
}
