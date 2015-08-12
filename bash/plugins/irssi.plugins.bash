#
# Function: irssi_nicklist()
#
# Irssi wrapper for tmux. It will split window #0 in two vertical panes:
#   Right -> Nicklist using FIFO file
#   Left  -> IRC main console
#
irssi_nicklist() {
  # bypass tmux config if not inside tmux
  if [[ ! -z $TMUX ]]; then
    # prepare tmux window
    $TMUX_BIN rename-window irc                             # name the window
    $TMUX_BIN -q set-window main-pane-width 20              # set the main pane width to the total width - 20
    $TMUX_BIN split-window -v "cat ~/.irssi/nicklistfifo"   # create the window and begin reading the fifo
    $TMUX_BIN -q select-layout main-vertical                # assign the layout
    $TMUX_BIN select-window -t irc                          # select window
    $TMUX_BIN swap-pane -U                                  # swap-panes
    $TMUX_BIN select-pane -t 1                              # select pane 1
  fi

  # execute irssi
  # TERM=screen-256color $IRSSI_BIN $@
  $IRSSI_BIN $@
}
