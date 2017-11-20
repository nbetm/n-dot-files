#!/usr/bin/env bash
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

set -e -u

PLATFORM=$(uname -s)

I_RED="\033[1;31m"
I_BLUE="\033[1;34m"
I_WHITE="\033[1;38m"
R_COLOR="\033[0m"

ARROW="${I_BLUE}==>${R_COLOR}${I_WHITE}"
ERROR="${I_RED}Error:${R_COLOR}"

#
# Function: add_sudoers_snippet()
#
# Add Sudoers Snippet for NOPASSWD.
#
add_sudoers_snippet () {
    echo -e "${ARROW} Adding Sudoers Snippet for NOPASSWD...${R_COLOR}"
    echo "${USER} ALL=NOPASSWD: ALL" | sudo tee /etc/sudoers.d/99_${USER}
    echo
}

#
# Install dependencies base on OS Platform
#
case $PLATFORM in
    Linux)
        echo -e "${ARROW} OS Platform: Linux${R_COLOR}\n"

        add_sudoers_snippet

        if [[ -f /etc/debian_version ]]; then
            # Debian/Ubuntu
            echo -e "${ARROW} Detected Debian/Ubuntu based distribution${R_COLOR}"

            echo -e "${ARROW} Installing dependencies...${R_COLOR}"
            sudo apt install -y build-essential autoconf automake git curl \
                     libssl-dev libffi-dev python-dev python-pip
            echo

        elif [[ -f /etc/redhat-release ]]; then
            # RedHat/CentOS
            echo -e "${ARROW} Detected RedHat/CentOS based distribution${R_COLOR}"

            echo -e "${ARROW} Installing dependencies...${R_COLOR}"
            sudo yum install -y @"Development Tools" libffi-devel curl \
                     openssl-devel python-devel python-pip
            echo

        else
            echo -e "${ERROR} Unsupported Linux distribution" 1>&2
            echo
            exit 1
        fi
        ;;
    Darwin)
            echo -e "${ARROW} OS Platform: macOS(Darwin)${R_COLOR}\n"

            add_sudoers_snippet

            echo -e "${ARROW} Installing dependencies...${R_COLOR}"

            # Homebrew
            /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

            # Pip
            curl -fsSL https://bootstrap.pypa.io/get-pip.py | sudo -H /usr/bin/python
        ;;
    *)
        echo -e "${ERROR} Unsupported OS Platform: ${PLATFORM}" 1>&2
        echo
        exit 1
esac

# Install Ansible
#
echo -e "${ARROW} Installing Ansible...${R_COLOR}"
pip install --user --upgrade pip ansible
echo


exit 0
