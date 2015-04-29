#
# Function: ssh()
#
# SSH wrapper for tmux. It will rename the current window with
# remote hostname. Ater disconnect, it will restore the old name.
#
sshi() {
  # bypass if not inside tmux
  if [[ ! -z $TMUX ]]; then
    # separate ssh options from host
    local args=($@)
    local len=${#args[@]}
    local host=${args[$len-1]}

    # rename win name and keep old name for restore
    local winname_saved=`$TMUX_BIN display-message -p '#W'`
    $TMUX_BIN rename-window "`echo $host | cut -d. -f1`"

    # do ssh
    $SSH_BIN $@

    # restore old name
    $TMUX_BIN rename-window "$winname_saved"

    unset args
    unset len
    unset host
    unset winname_saved
  else
    $SSH_BIN $@
  fi
}
