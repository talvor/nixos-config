# homepage: https://github.com/folke/which-key.nvim
# nixvim doc: https://nix-community.github.io/nixvim/plugins/which-key/index.html

{
  programs.nixvim.plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        numbers = "none";
        diagnostics = "nvim_lsp";
        offsets = [
          {
            filetype = "neo-tree";
            text = "File Explorer";
            text_align = "center";
            highlight = "Directory";
          }
        ];
        separator_style = "slope";
      };
    };
  };
}
