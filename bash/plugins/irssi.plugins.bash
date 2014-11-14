# tmux bin
tmux_bin='/usr/local/bin/tmux'

#
# Function: irssi_window()
#
# Adjusts tmux window creating two panes one for main window
# and the other one for the nicklist
#
function irssi_window() {
  $tmux_bin renamew irc                                    # name the window
  $tmux_bin -q setw main-pane-width $(($(tput cols) - 20)) # set the main pane width to the total width - 20
  $tmux_bin splitw -v "cat ~/.irssi/nicklistfifo"          # create the window and begin reading the fifo
  $tmux_bin -q selectl main-vertical                       # assign the layout
  $tmux_bin selectw -t irc                                 # select window
  $tmux_bin selectp -t 0                                   # select pane 0
}

#
# Function: launch_irssi()
#
# Wrapper around irssi and tmux
#
function irssi_launch() {
  irssi_window
  irssi
}
