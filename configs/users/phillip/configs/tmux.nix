{ pkgs, config, ... }: {
  programs.tmux = {
    enable = true;
    shortcut = "a";
    baseIndex = 1;
    newSession = true;
    escapeTime = 0;
    secureSocket = false;

    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.better-mouse-mode
      tmuxPlugins.gruvbox
    ];

    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"
      set-option -a terminal-features '256:RGB'

      set-option -g prefix C-a
      unbind-key C-b
      bind-key C-a send-prefix

      set -g mouse on

      # Change splits to match nvim and easier to remember
      # Open new split at cwd of current split
      unbind %
      unbind '"'
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      bind c new-window -c "#{pane_current_path}"

      # Use vim keybindings in copy mode
      set-window-option -g mode-keys vi

      # v in copy mode starts making selection
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

      # Escape turns on copy mode
      bind Escape copy-mode

      # Easier reload of config
      bind r source-file ~/.config/tmux/tmux.conf

      set-option -g status-position top

    '';
  };

}
