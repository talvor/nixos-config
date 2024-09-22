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

          (mkButton "LDR s l" "" "  Last Session" "String")
          (mkButton "LDR e" "" "  Explorer" "String")
          (mkButton "LDR f o" "" "󰈙  Recents" "String")
          (mkButton "LDR f f" "" "  Find File" "String")
          (mkButton "LDR f g" "" "󰈭  Live Grep" "String")
          (mkButton "LDR n" "" "  New File" "String")
          (mkButton "q" "<CMD>qa<CR>" "󰒡 Quit Neovim" "String")
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