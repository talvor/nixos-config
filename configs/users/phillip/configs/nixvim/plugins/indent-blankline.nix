{
  programs.nixvim.colorschemes.catppuccin.settings.integrations.indent_blankline = true;

  programs.nixvim.plugins.indent-blankline = {
    enable = true;

    settings = {
      indent.char = "▏";

      # Disable scope highlighting
      scope.enabled = false;

      exclude.filetypes = [
        "aerial"
        "alpha"
        "dashboard"
        "lazy"
        "mason"
        "neo-tree"
        "NvimTree"
        "neogitstatus"
        "notify"
        "startify"
        "toggleterm"
        "Trouble"
      ];

      scope = {
        show_start = false;
        show_end = false;
      };
    };
  };
}
