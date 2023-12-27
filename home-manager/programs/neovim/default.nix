{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        extraLuaConfig = ''
            ${builtins.readFile config/mappings.lua}
            ${builtins.readFile config/options.lua}
        '';
        plugins = [
            ## Theme
            {
                plugin = pkgs.vimPlugins.nordic-nvim;
                config = "vim.cmd[[colorscheme nordic]]";
                type = "lua";
            }
            ## Lualine
            {
                plugin = pkgs.vimPlugins.lualine-nvim;
                config = ''
                    require('lualine').setup {
                        options = {
                            theme = 'nord',
                        }
                    }
                '';
                type = "lua";
            }
            ## nvim-tree
            {
                plugin = pkgs.vimPlugins.nvim-tree-lua;
                type = "lua";
                config = ''
                    require("nvim-tree").setup()
                '';
            }
            pkgs.vimPlugins.nvim-web-devicons

            ## Treesitter
            {
                plugin = pkgs.vimPlugins.nvim-treesitter;
                config = builtins.readFile config/setup/treesitter.lua;
                type = "lua";
            }
            pkgs.vimPlugins.nvim-treesitter.withAllGrammars
            pkgs.vimPlugins.nvim-treesitter-textobjects
        ];
    };
}