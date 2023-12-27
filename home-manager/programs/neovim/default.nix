{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        extraLuaConfig = ''
            ${builtins.readFile config/options.lua}
            ${builtins.readFile config/mappings.lua}
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
            ## Which-Key
            {
                plugin = pkgs.vimPlugins.which-key-nvim;
                type = "lua";
                config = ''
                    vim.o.timeout = true
                    vim.o.timeoutlen = 300
                    require("which-key").setup {}
                '';
            }
            ## Treesitter
            {
                plugin = pkgs.vimPlugins.nvim-treesitter;
                config = builtins.readFile config/setup/treesitter.lua;
                type = "lua";
            }
            pkgs.vimPlugins.nvim-treesitter.withAllGrammars
            pkgs.vimPlugins.nvim-treesitter-textobjects

            ## Telescope
            {
            plugin = pkgs.vimPlugins.telescope-nvim;
            config = builtins.readFile config/setup/telescope.lua;
            type = "lua";
            }
            pkgs.vimPlugins.telescope-fzf-native-nvim
            pkgs.vimPlugins.harpoon
        ];
    };

    home.packages = with pkgs; [
        ripgrep
    ];
}