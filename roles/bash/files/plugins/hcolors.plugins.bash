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
# Function: hcolors()
#
# Shows a demo of the Handy Colors. Instead of keeping this function in sync
# with the definitions, the declarations are parsed directly from the
# environment variables.
#
# See 'base.system.bash'
#
hcolors () {
    # The name of the function defining the 'Handy Colors'
    local hc_function='_hcolors_definition'

    is_function $hc_function || return $E_FAILURE

    local hc_caption="Handy Colors for BASH :: Demo from the 'n-dot-files'"
    local hc_pattern="export (.*)='(.*m)';?$"
    local hc_index=1 hc_name hc_code

    # Reset to Normal (JIC)
    echo -e "${R_COLOR}"

    while read -r hc_line; do
    if [[ $hc_line =~ $hc_pattern ]]; then
        hc_name='${'${BASH_REMATCH[1]}'}'
        hc_code=${BASH_REMATCH[2]}

        printf "%-20s %-15s ${hc_code} %s ${R_COLOR}\n" "$hc_name" "$hc_code" "$hc_caption"
        (( hc_index++ % 8 == 0 )) && echo
    fi
    done < <(declare -f $hc_function 2> /dev/null)

    # Doing anything from "Tip #2" will avoid showing the Tips
    [[ -n "$1" || -n "$HC_TIPS" ]] && return $E_SUCCESS

    echo # Here comes the TIPS

    # Tip #1
    echo -e "\n ${I_BLUE}TIP #1:${R_COLOR} You can combine ${WHITE}\"Foreground\"${R_COLOR} and ${WHITE}\"Background\"${R_COLOR} definitions:"
    echo -e " * echo -e \"\${I_YELLOW}\${ON_BLUE} You should see this line in ${I_YELLOW}I_YELLOW${R_COLOR} over ${BLUE}BLUE${R_COLOR}... \${R_COLOR}\""
    echo -e " ${I_YELLOW}${ON_BLUE} You should see this line in I_YELLOW over BLUE... ${R_COLOR}"

    # Tip #2
    echo -e "\n ${I_GREEN}TIP #2:${R_COLOR} To avoid showing this ${WHITE}\"Tips\"${R_COLOR} do one of the following:"
    echo -e " * Pass anything as an argument to this function (i.e ${I_RED}${FUNCNAME} x${R_COLOR})"
    echo -e " * Export ${MAGENTA}HC_TIPS${R_COLOR} with any value"

    # Tip #3
    echo -e "\n ${RED}TIP #3:${R_COLOR} Consider this ${BLACK}${ON_WHITE} Tips ${R_COLOR} as Examples ${I_YELLOW};-)${R_COLOR} ${I_GRAY}(See the Code)${R_COLOR}\n"
}

#
# Function: check_truecolors()
#
# Checks if terminal supports 24bit true colour (16 millions)
#
check_truecolours() {
    awk 'BEGIN{
        s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
        for (colnum = 0; colnum<77; colnum++) {
            r = 255-(colnum*255/76);
            g = (colnum*510/76);
            b = (colnum*255/76);
            if (g>255) g = 510-g;
            printf "\033[48;2;%d;%d;%dm", r,g,b;
            printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
            printf "%s\033[0m", substr(s,colnum+1,1);
        }
        printf "\n";
    }'
}

#
# Function: display_256colours()
#
# Displays 256 colours palette
#
display_256colours() {
    for i in {0..255}; do
        printf "\x1b[38;5;${i}mcolour${i}\n"
    done
}
