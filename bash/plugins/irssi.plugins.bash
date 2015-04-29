#
# Function: irssi()
#
# Irssi wrapper for tmux. It will split window #0 in two vertical panes:
# Left  -> IRC main console
# Right -> Nicklist using FIFO file
#
irssi() {
  # bypass tmux config if not inside tmux
  if [[ ! -z $TMUX ]]; then
    # prepare tmux window
    $TMUX_BIN rename-window irc                                     # name the window
    $TMUX_BIN -q set-window main-pane-width $(($(tput cols) - 20))  # set the main pane width to the total width - 20
    $TMUX_BIN split-window -v "cat ~/.irssi/nicklistfifo"           # create the window and begin reading the fifo
    $TMUX_BIN -q select-layout main-vertical                        # assign the layout
    $TMUX_BIN select-window -t irc                                  # select window
    $TMUX_BIN select-pane -t 0                                      # select pane 0
  fi

  # execute irssi
  TERM=screen-256color $IRSSI_BIN $@
}
