# Manage buffers
# https://github.com/AstroNvim/AstroNvim/blob/v4.7.7/lua/astronvim/plugins/_astrocore_mappings.lua#L56-L89
[
  {
    mode = "n";
    key = "<leader>c";
    options.desc = "Close buffer";

    action.__raw = ''
      function()
        require('bufdelete').bufdelete(0)
      end
    '';
  }
  {
    mode = "n";
    key = "<leader>C";
    options.desc = "Force close buffer";

    action.__raw = ''
      function()
        require('bufdelete').bufdelete(0, true)
      end
    '';
  }
  {
    mode = "n";
    key = "]b";
    options.desc = "Next buffer in tabline";
    action = "<Cmd>BufferLineCycleNext<CR>";
  }
  {
    mode = "n";
    key = "[b";
    options.desc = "Previous buffer in tabline";
    action = "<Cmd>BufferLineCyclePrev<CR>";
  }
  {
    mode = "n";
    key = ">b";
    options.desc = "Move buffer tab right";
    action = "<Cmd>BufferLineMoveNext<CR>";
  }
  {
    mode = "n";
    key = "<b";
    options.desc = "Move buffer tab left";
    action = "<Cmd>BufferLineMovePrev<CR>";
  }
  {
    mode = "n";
    key = "<leader>bc";
    options.desc = "Close all buffers except current";

    action.__raw = ''
      function()
        --require("astrocore.buffer").close_all(true)
      end
    '';
  }
  {
    mode = "n";
    key = "<leader>bC";
    options.desc = "Close all buffers";

    action.__raw = ''
      function()
        --require("astrocore.buffer").close_all()
      end
    '';
  }
  {
    mode = "n";
    key = "<leader>bl";
    options.desc = "Close all buffers to the left";

    action.__raw = ''
      function()
        --require("astrocore.buffer").close_left()
      end
    '';
  }
  {
    mode = "n";
    key = "<leader>bp";
    options.desc = "Previous buffer";

    action.__raw = ''
      function()
        --require("astrocore.buffer").prev()
      end
    '';
  }
  {
    mode = "n";
    key = "<leader>br";
    options.desc = "Close all buffers to the right";

    action.__raw = ''
      function()
        --require("astrocore.buffer").close_right()
      end
    '';
  }
  {
    mode = "n";
    key = "<Leader>bse";
    options.desc = "By extension";
    action = "<Cmd>BufferLineSortByExtension<CR>";
  }
  {
    mode = "n";
    key = "<Leader>bsr";
    options.desc = "By relative path";
    action = "<Cmd>BufferLineSortByDirectory<CR>";
  }
  # {
  #   mode = "n";
  #   key = "<Leader>bsp";
  #   options.desc = "By full path";
  #
  #   action.__raw = ''
  #     function()
  #       --require("astrocore.buffer").sort "full_path"
  #     end
  #   '';
  # }
  {
    mode = "n";
    key = "<Leader>bsi";
    options.desc = "By buffer number";

    action.__raw = ''
      function()
        require("bufferline").sort_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)
      end
    '';
  }
  # {
  #   mode = "n";
  #   key = "<Leader>bsm";
  #   options.desc = "By modification";
  #
  #   action.__raw = ''
  #     function()
  #       --require("astrocore.buffer").sort "modified"
  #     end
  #   '';
  # }
]
