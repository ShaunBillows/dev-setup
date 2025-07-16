# First, declare plugins
set -g @plugin 'tmux-plugins/tpm'

# Set base index to 1
set -g base-index 1
set -g pane-base-index 1

# Reload config
unbind r
bind r source-file ~/.tmux.conf \; display "Config reloaded"

# Larger history
set -g history-limit 10000

# Minimal status bar
set -g status-left ""
set -g status-right ""

# Use terminal defaults for colors
set -g status-style bg=default

# Simple window display format
# set -g window-status-format " #I:#W "
# set -g window-status-current-format " #I:#W "
# set -g window-status-current-style "bold"
# set -g window-status-separator ""

# Window number (with a dot separator), and window name
set -g window-status-format " #I.#W "
set -g window-status-current-format " #I.#W "
set -g window-status-current-style "bold"
set -g window-status-separator " "

# Move status bar to top
set -g status-position top

# Some sensible settings
set -g escape-time 0
set -sg repeat-time 600

# Initialize TMUX plugin manager (keep this at the very end!)
run '~/.tmux/plugins/tpm/tpm'
