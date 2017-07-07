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


# ------------------------------------------------------------------------------
# Readline Variables
# ------------------------------------------------------------------------------

# Ve Improved
bind 'set editing-mode vi'
bind 'set keymap vi-insert'

# Melange
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'set mark-symlinked-directories on'
bind 'set skip-completed-text on'
bind 'set print-completions-horizontally on'
bind 'set completion-query-items 200'

# ------------------------------------------------------------------------------
# Readline Commands
# ------------------------------------------------------------------------------

# Up and Down - Non-incremental search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Ctrl+L - Clears the screen in 'Insert' mode
bind '"\C-l": clear-screen'

# Ctrl+Space - Expand History on current line
bind '"\C- ": history-expand-line'

# Alt+. - Yank last arg
bind '"\e.": yank-last-arg'
