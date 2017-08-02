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

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

PLATFORM=$(uname -s)
case $PLATFORM in
    Linux)
        if [[ -f /etc/debian_version ]]; then
            # Debian/Ubuntu
            echo "=> Detected Debian/Ubuntu based distribution"

            echo "=> Installing dependencies..."
            apt install -y build-essential autoconf automake git curl \
                libssl-dev libffi-dev python-dev python-pip

        elif [[ -f /etc/redhat-release ]]; then
            # RedHat/CentOS
            echo "=> Detected RedHat/CentOS based distribution"

            echo "=> Installing dependencies..."
            yum install -y @"Development Tools" libffi-devel openssl-devel \
                curl python-devel python-pip

        else
            echo "Unsupported Linux distribution" 1>&2
            exit 1
        fi

        echo "=> Installing Ansible..."
        pip install --upgrade pip ansible

        echo "=> Done!"
        ;;
    *)
        echo "Unsupported OS Platform: ${PLATFORM}" 1>&2
        exit 1
esac

exit 0
