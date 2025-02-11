#!/bin/bash

# this script just on external monitor only. off laptop screen
# $1 -> laptop screen name    ex: eDP
# $2 -> external monitor name ex: HDMI-A-1

if [[ "$(xrandr --listmonitors | grep HDMI)" != "" ]]
then
    xrandr --output $1 --off && xrandr --output $2 --primary;
    i3-msg workspace number 1
fi
