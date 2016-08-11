# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [[ -f /etc/bash_completion ]] && ! shopt -oq posix; then
    source /etc/bash_completion
fi

# Homebrew bash-completion (macOS)
if [[ $(uname) == "Darwin" ]] && [[ $(which brew) ]]; then
    if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
        source $(brew --prefix)/etc/bash_completion
    fi
fi
