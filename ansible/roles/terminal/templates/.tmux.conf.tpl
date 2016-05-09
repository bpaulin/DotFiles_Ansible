## Vim
## Control A
set-option -g prefix C-a
# Vi copypaste mode
set-window-option -g mode-keys vi
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection
# hjkl pane traversal
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# auto window rename
set-window-option -g automatic-rename
# color
set -g default-terminal "screen-256color"
# Start numbering at 1
set -g base-index 1
set-window-option -g pane-base-index 1
# Activity monitoring
setw -g monitor-activity on
set -g visual-activity on
# Mouse
set -g mode-mouse on
set -g mouse-resize-pane on
set -g mouse-select-pane on
set -g mouse-select-window on
# History
set-option -g history-limit 5000

## Status bar
set -g status-justify centre
setw -g window-status-current-bg red
setw -g window-status-current-fg white
set -g status-left-length 20
set -g status-left '#H (#S)'
set -g status-right '%H:%M'

## Binds
# reload config
bind r source-file ~/.tmux.conf \; display-message "Config reloaded..."

