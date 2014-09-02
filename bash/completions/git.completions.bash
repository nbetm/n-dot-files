#!/bin/bash

# g => git
if [ -r /usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash ]; then
  source /usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash 
  complete -o bashdefault -o default -o nospace -F _git g
fi

