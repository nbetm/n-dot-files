#
# MIT License
#
# Copyright (c) 2017 Nelson R Monserrate
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


# Determine if the OOSM must be reactivated
if [[ -n "$OOSM_AUTOSTART" ]] || oosm_active; then
    oosm_reactivate=1
fi

# History filename
export HISTFILE=$NDF_BASH_LOCAL/bash_history

# Maximum number of lines in the History file
export HISTFILESIZE=10000

# Number of lines to keep in the current session
export HISTSIZE=10000

# Ignore duplicate and commands starting with spaces
export HISTCONTROL=ignorespace:ignoredups

#
# Ignore commands following this pattern. Beware of the History substitution
# commands (i.e '!!'), as you may think you are repeating something that is not
# saved in the history.
#
export HISTIGNORE="&"                                     # Repeated commands
export HISTIGNORE=${HISTIGNORE}":~:-:..:..[2345?]:cd *"   # Directories Navigation
export HISTIGNORE=${HISTIGNORE}":l:l[slw1]:l\? *"         # Directories Listings
export HISTIGNORE=${HISTIGNORE}":g [lsd]:g dc:g ss"       # Git aliases (trivial ones)
export HISTIGNORE=${HISTIGNORE}":history:h:h? *"          # History
export HISTIGNORE=${HISTIGNORE}":bos:oos"                 # Out-Of-Service Mode
export HISTIGNORE=${HISTIGNORE}":exit"                    # Exit command

# Reactivate OOSM if needed
if [[ $oosm_reactivate -eq 1 ]]; then
    history -c  # Clear the current History before reloading it to avoid duplication
    history -r  # Reload the History right before unsetting it
    oos         # Activate OOSM

    unset oosm_reactivate
fi
