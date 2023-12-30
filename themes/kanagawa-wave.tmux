# Kanagawa Wave - Tmux Theme
# Based on a theme by Jim Myhrberg <contact@jimeh.me>.
#
# Requires a powerline compatible font and true colour terminal

# Status update interval
set -g status-interval 2

# Basic status bar colors
set -g status-fg "#C8C093"
set -g status-bg "#2A2A37"

# Left side of status bar
# highlight when prefix is pressed
set -g status-left "\
#{?client_prefix,#[fg=#252535]#[bg=#C8C093],#[fg=#C8C093]#[bg=#252535]}\
 #S #{?client_prefix,#[fg=#C8C093]#[bg=#252535],#[fg=#252535]#[bg=C8C093]}\
#[fg=#252535,bg=#2A2A37]"

# Right side of status bar
# date — time — hostname
set -g status-right "\
 #[fg=#DCD7BA]%d-%b-%y \
 #[fg=#DCD7BA,bold]%H:%M #[fg=#252535]\
#[fg=#7E9CD8,bg=#252535,bold]  #H "

# Window status
# red on bell — yellow on activity — blue for previous
set -g window-status-format "#[fg=#2A2A37,bg=#2A2A37]#[fg=default,] #I#F #[fg=default] \
#{?window_bell_flag,#[fg=#C34043],\
#{?window_activity_flag,#[fg=#C0A36E],\
#{?window_last_flag,#[fg=#7E9CD8],\
#[fg=#DCD7BA]}}}#W   "

# Current window status format
set -g window-status-current-format "#[fg=#2A2A37,bg=#7E9CD8]#[fg=0,bold] #I#F \
 #W #[fg=#7E9CD8,bg=#2A2A37,nobold]"

# Current window status style
set -g window-status-style "bg=0,fg=default"

# Window with bell status
set -g window-status-bell-style "noreverse"

# Window with activity status
set -g window-status-activity-style "noreverse"

# Window separator
set -g window-status-separator ""

# Window status alignment
set -g status-justify left

# Pane border
set -g pane-border-style "bg=default,fg=0"

# Active pane border
set -g pane-active-border-style "bg=default,fg=#76946A"

# Pane number indicator
set -g display-panes-colour "#7E9CD8"
set -g display-panes-active-colour "#C8C093"

# Clock mode
set -g clock-mode-colour "#93a1a1"
set -g clock-mode-style 24

# Message
set -g message-style "bg=0,fg=#93a1a1"

# Command message
set -g message-command-style "bg=0,fg=#93a1a1"

# vim: filetype=tmux
