{
  programs.nixvim.keymaps =
    (import ./buffers.nix)
    ++ (import ./diagnostics.nix)
    ++ (import ./splits.nix)
    ++ (import ./standard.nix)
    ++ (import ./tabs.nix);
}
