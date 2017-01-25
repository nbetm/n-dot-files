# Directories Listings
alias ls='ls --color=auto'
alias ll='ls --all --human-readable --classify -l'
alias l1='ls --almost-all -1'
alias l?='ll | ?'
alias lw='l1 | wc -l'
alias l='ll'

# Directories Navigation & Handling
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias ..?='path_leader'
alias -- -='cd -'

# Verbose/Interactive File Operations
alias cp='cp -v -i'
alias mv='mv -v -i'
alias rm='rm -v -i'

# File System Listings
alias df='df -h -P'

# Tmux
alias tmux='[ -z "$TMUX" ] && TERM=xterm-256color tmux'

# Irssi
alias irssi='TERM=screen-256color irssi'

# Print JSON
alias p.json="python -m json.tool"
