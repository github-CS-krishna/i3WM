#!/bin/bash

#set-monitor is my bash script - off laptop screen
exec --no-startup-id "$HOME/.config/i3/set-monitor.sh LAPTOP_NAME HDMI_NAME"

pywal --iterative -i "$HOME/PATH_TO_WALLAPAER"

$HOME/.config/polybar/launch_lenovo.sh

picom -b

emacs --daemon
