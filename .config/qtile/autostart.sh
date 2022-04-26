#!/bin/sh
xrandr --output HDMI-3 --same-as LVDS-1 &
picom --config ~/.config/picom/picom.conf &
xset s off &
xset -dpms &
numlockx &
dunst &
blueman-applet &
nm-applet &
nitrogen --restore &
clipit &
/usr/libexec/polkit-gnome-authentication-agent-1 &
