{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        extraLuaConfig = ''
            ${builtins.readFile config/options.lua}
            ${builtins.readFile config/mappings.lua}
        '';
        plugins = [
            pkgs.vimPlugins.LazyVim
            
            ## Theme
            {
                plugin = pkgs.vimPlugins.nordic-nvim;
                config = "vim.cmd[[colorscheme nordic]]";
                type = "lua";
            }

            ## Lualine
            {
                plugin = pkgs.vimPlugins.lualine-nvim;
                config = builtins.readFile config/setup/lualine.lua;
                type = "lua";
            }
            
            ## bufferline
            {
              plugin = pkgs.vimPlugins.bufferline-nvim;
              config = builtins.readFile config/setup/bufferline.lua;
              type = "lua";
            }

            ## nvim-tree
            {
                plugin = pkgs.vimPlugins.nvim-tree-lua;
                type = "lua";
                config = builtins.readFile config/setup/nvim-tree.lua;
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
            pkgs.vimPlugins.plenary-nvim

            ## Telescope
            {
                plugin = pkgs.vimPlugins.telescope-nvim;
                config = builtins.readFile config/setup/telescope.lua;
                type = "lua";
            }
            pkgs.vimPlugins.telescope-fzf-native-nvim

            ## cmp
            {
                plugin = pkgs.vimPlugins.nvim-cmp;
                config = builtins.readFile config/setup/cmp.lua;
                type = "lua";
            }
            pkgs.vimPlugins.cmp-nvim-lsp
            pkgs.vimPlugins.cmp-buffer
            pkgs.vimPlugins.cmp-cmdline
            pkgs.vimPlugins.cmp_luasnip
            pkgs.vimPlugins.lspkind-nvim
            pkgs.vimPlugins.luasnip

            ## QoL
            pkgs.vimPlugins.rainbow
            pkgs.vimPlugins.surround-nvim
            pkgs.vimPlugins.lazygit-nvim

            {
                plugin = pkgs.vimPlugins.comment-nvim;
                config = "require('Comment').setup()";
                type = "lua";
            }
            {
                plugin = pkgs.vimPlugins.gitsigns-nvim;
                config = "require('gitsigns').setup()";
                type = "lua";
            }
        ];
    };

    home.packages = with pkgs; [
        ripgrep
        lazygit
        gcc
        ripgrep
        fd
    ];
}
