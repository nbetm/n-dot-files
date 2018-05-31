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
#
#
# DESCRIPTION
# -----------
# Take a screenshot of an area of the screen, upload it to dropbox and put the
# url into the clipboard

# Put file in any directory under your dropbox
FILENAME=$HOME/Dropbox/Screenshots/Screenshot_$(date +%Y-%m-%d_%H.%M.%S).png
mkdir -p $(dirname $FILENAME)

# Select an area and save the screenshot
spectacle -s -b -r -n -o $FILENAME 2>/dev/null

# Get the URL from Dropbox
URL=$(dropbox sharelink $FILENAME)

# Copy URL to clipboard
echo $URL | xclip -in -selection clipboard

# Pop up notification
notify-send "Sharing Screenshot" "A link to your screenshot was copied to your clipboard."
