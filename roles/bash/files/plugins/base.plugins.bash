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


#
# Function: path_leader()
#
# Displays information related to the 'Current Working Directory' (CWD) and
# possible navigation around it.
#
path_leader () {
    local work_path=$PWD
    local max_level=5     # TODO: Determine the 'max_level' value from inspection of the user defined aliases
    local now_level=0
    local alias_sfx=''

    echo -e "\n${WHITE}CWD = ${work_path}${R_COLOR}"

    while [[ ${#work_path} > 1 ]] && (( now_level++ < max_level )); do
        work_path=${work_path%/*}

        [[ -z "$work_path" ]] && work_path='/'
        [[ $now_level -gt 1 ]] && alias_sfx=$now_level

        printf "${I_GREEN}..%-3s${R_COLOR} %s\n" "$alias_sfx" "$work_path"
    done

    echo # Display the HOME directory and the previous Working Directory

    printf "${I_RED}%-6s${R_COLOR}" '~'
    [[ "$HOME" != "$PWD" ]] && echo "$HOME" || echo 'You are already at your HOME directory'

    printf "${I_RED}%-6s${R_COLOR}" '-'
    [[ -n "$OLDPWD" ]] && echo "$OLDPWD" || echo 'There is no previuos Working Directory'
}
