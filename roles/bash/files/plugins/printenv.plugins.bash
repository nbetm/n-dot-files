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
# Function: _penv_filter()
#
# Filters the Shell variables to show specific types
#
_penv_filter () {
    # All variables prefixed with the function name to filter them out of the
    # 'Local Variables' list
    local __penv_filter_type_filter=$1
    local __penv_filter_pattern=$2
    local __penv_filter_suffix

    case $__penv_filter_type_filter in
        evars ) __penv_filter_declare_filter='x';;  # Environment Variables
        lvars ) __penv_filter_declare_filter='';;   # Local Variables
        funcs ) __penv_filter_declare_filter='F'    # Functions
                __penv_filter_suffix='()';;
    esac

    # Based on solution proposed by Stephane Chazelas
    # http://unix.stackexchange.com/questions/72506/how-to-print-shell-variables-and-values-to-be-able-to-copy-paste-them?rq=1
    (
    # Make pattern match case-insensitive
    # Do it here to keep it at the subshell level
    shopt -s nocasematch

    eval 'declare() {
            [[ $__penv_filter_type_filter = "lvars" && ($1 == *x* || $2 == __penv_filter_*) ]] && return
            [[ ${2%%=*} != *$__penv_filter_pattern* ]] && return

            echo -ne "${I_GREEN}>${R_COLOR}"; printf " %-5s %q%s\n" "$1" "$2" "$__penv_filter_suffix"
          }'"
          $(declare -p${__penv_filter_declare_filter})"
    )
}

#
# Function: penv_evars()
#
# Displays the 'Environment Variables'
#
penv_evars () {
    echo -e "\n${WHITE}Environment Variables (Exported)${R_COLOR}"
    _penv_filter evars $1
}

#
# Function: penv_lvars()
#
# Displays the 'Local Variables'
#
penv_lvars () {
    echo -e "\n${WHITE}Local Variables (Non Exported)${R_COLOR}"
    _penv_filter lvars $1
}

#
# Function: penv_funcs()
#
# Displays the defined Shell functions
#
penv_funcs () {
    echo -e "\n${WHITE}Functions${R_COLOR}"
    _penv_filter funcs $1
}

#
# Function: penv()
#
# Displays all Shell variables and functions
#
penv () {
    for type in 'evars' 'lvars' 'funcs'; do
        penv_$type $1
    done
    unset type
}
