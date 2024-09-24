{ pkgs, ...}:
{
  programs.nixvim.plugins.comment = {
    enable = true;
    settings.pre_hook = "require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()";
  };

  programs.nixvim.plugins.ts-context-commentstring.enable = true;
}
