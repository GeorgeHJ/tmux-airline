# Airline Solarized Dark - Tmux Theme
# Based on a theme by Jim Myhrberg <contact@jimeh.me>.
#
# Requires a powerline compatible font and true colour terminal

# Status update interval
set -g status-interval 2

# Basic status bar colors
set -g status-fg "#586e75"
set -g status-bg "#073642"

# Left side of status bar
# highlight when prefix is pressed
set -g status-left "\
#{?client_prefix,#[fg=#586e75]#[bg=#fdf6e3],#[fg=#fdf6e3]#[bg=#93A1A1]}\
 #S #{?client_prefix,#[fg=#fdf6e3]#[bg=#586e75],#[fg=#93a1a1]#[bg=#586e75]}\
#[fg=#586e75,bg=#073642]"

# Right side of status bar
# date — time — hostname
set -g status-right "\
 #[fg=#839496]%d-%b-%y #[fg=#586e75]\
 #[fg=#93a1a1,bold]%H:%M #[fg=#657b83,bg=#073642]\
#[fg=#93A1A1,bg=#657b83]#[fg=#fdf6e3,bg=#93A1A1,bold]  #H "

# Window status
# magenta on bell — yellow on activity — blue for previous
set -g window-status-format "#[fg=#073642,bg=#073642]#[fg=#93a1a1] #I#F #[fg=#586e75] \
#{?window_bell_flag,#[fg=#d33682],\
#{?window_activity_flag,#[fg=#b58900],\
#{?window_last_flag,#[fg=#268bd2],\
#[fg=#93a1a1]}}}#W   "

# Current window status format
set -g window-status-current-format "#[fg=#073642,bg=#93A1A1]#[fg=#fdf6e3,bold] #I#F \
 #W #[fg=#93A1A1,bg=#586e75]#[fg=#586e75,bg=#073642,nobold]"

# Current window status style
set -g window-status-style "bg=#073642,fg=#fdf6e3"

# Window with bell status
set -g window-status-bell-style "noreverse"

# Window with activity status
set -g window-status-activity-style "noreverse"

# Window separator
set -g window-status-separator ""

# Window status alignment
set -g status-justify left

# Pane border
set -g pane-border-style "bg=default,fg=#073642"

# Active pane border
set -g pane-active-border-style "bg=default,fg=#586e75"

# Pane number indicator
set -g display-panes-colour "#586e75"
set -g display-panes-active-colour "#268bd2"

# Clock mode
set -g clock-mode-colour "#93a1a1"
set -g clock-mode-style 24

# Message
set -g message-style "bg=#073642,fg=#93a1a1"

# Command message
set -g message-command-style "bg=#073642,fg=#93a1a1"

# vim: filetype=tmux
