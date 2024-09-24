# homepage: https://github.com/folke/which-key.nvim
# nixvim doc: https://nix-community.github.io/nixvim/plugins/which-key/index.html
{ icons, ... }:

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
        icon = "${icons.Tab} ";
      }
      {
        __unkeyed-1 = "<leader>sb";
        group = "Sort Buffers";
        icon = "${icons.Sort} ";
      }
      {
        __unkeyed-1 = "<leader>d";
        group = "Debugger";
        icon = "${icons.Debugger} ";
      }
      {
        __unkeyed-1 = "<leader>f";
        group = "Find";
        icon = "${icons.Search} ";
      }
      {
        __unkeyed-1 = "<leader>g";
        group = "Git";
        icon = "${icons.Git} ";
      }
      {
        __unkeyed-1 = "<leader>l";
        group = "Language Tools";
        icon = "${icons.ActiveLSP} ";
      }
      {
        __unkeyed-1 = "<leader>m";
        group = "Markdown";
        icon = " ";
      }
      {
        __unkeyed-1 = "<leader>s";
        group = "Session";
        icon = "${icons.Session} ";
      }
      {
        __unkeyed-1 = "<leader>t";
        group = "Terminal";
        icon = "${icons.Terminal} ";
      }
      {
        __unkeyed-1 = "<leader>u";
        group = "UI/UX";
        icon = "${icons.Window} ";
      }
    ];
  };
}
