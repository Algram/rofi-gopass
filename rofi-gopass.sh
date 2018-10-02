#!/bin/bash

# Simple gopass manager with rofi
# It displays a list of available passwords defined with gopass
# and types them once an item is selected with enter

gopass ls --flat | rofi -dmenu -p gopass | xargs --no-run-if-empty gopass show -f | head -n 1 | xdotool type --clearmodifiers --file -