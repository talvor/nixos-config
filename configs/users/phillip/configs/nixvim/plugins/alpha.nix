{ icons, ... }:

{
  programs.nixvim.plugins.alpha = let
    nixVim = [
      "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
      "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
      "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
      "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
      "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
      "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
    ];

  in {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 1;
      }
      {
        opts = {
          hl = "AlphaHeader";
          position = "center";
        };
        type = "text";
        val = nixVim;
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = let
          mkButton = shortcut: cmd: val: hl: {
            type = "button";
            inherit val;
            opts = {
              inherit hl shortcut;
              keymap = [
                "n"
                shortcut
                cmd
                {}
              ];
              position = "center";
              cursor = 0;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          };
        in [

          (mkButton "LDR s l" "" "${icons.Refresh}  Last Session" "String")
          (mkButton "LDR e" "" "${icons.FolderOpen}  Explorer" "String")
          (mkButton "LDR f o" "" "${icons.DefaultFile}  Recents" "String")
          (mkButton "LDR f f" "" "${icons.Search}  Find File" "String")
          (mkButton "LDR f g" "" "${icons.WordFile}  Live Grep" "String")
          (mkButton "LDR n" "" "${icons.FileNew}  New File" "String")
          (mkButton "q" "<CMD>qa<CR>" "${icons.Diagnostic} Quit Neovim" "String")
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        opts = {
          hl = "GruvboxBlue";
          position = "center";
        };
        type = "text";
        val = "https://github.com/siph/nixvim-flake";
      }
    ];
  };
}