{
  programs.nixvim.plugins.dressing = {
    enable = true;

    settings = {
      input = {
        default_prompt = "> ";
        title_pos = "center";
      };

      select.backend = [ "telescope" "builtin" ];
    };
  };
}
