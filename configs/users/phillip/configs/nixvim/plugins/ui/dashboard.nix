{
  programs.nixvim.plugins.dashboard = {

    enable = true;

    settings = {

      theme = "hyper";

      change_to_vcs_root = true;

      config = {

        # Most recently used
        mru = { icon_hl = "RainbowDelimiterBlue"; };

        # TODO: i don't think this works with nix right
        packages.enable = false;

        project = {
          enable = true;
          icon = "";
        };

      };
    };
  };
}
