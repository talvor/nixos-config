{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./core/autocmds.nix
    ./core/keymaps
    ./core/options.nix
    
    # plugins
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorschemes.nord.enable = true;

    # Use <Space> as leader key
    globals.mapleader = " ";

    # Set 'vi' and 'vim' aliases to nixvim
    viAlias = true;
    vimAlias = true;

    # Setup clipboard support
    clipboard = {
      # Use xsel as clipboard provider
      providers.xsel.enable = true;

      # Sync system clipboard
      register = "unnamedplus";
    };

    luaLoader.enable = true;
  };
}
