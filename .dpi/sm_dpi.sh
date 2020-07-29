#!/bin/bash

rm ~/.Xresources

touch ~/.Xresources

cat <<EOF > ~/.Xresources
Xft.dpi: 92
EOF

xrdb -merge ~/.Xresources
xrandr --output eDP-1 --off --output DP-1 --mode 1920x1080 --pos 0x127 --rotate normal --output HDMI-1 --off
cat ~/.config/i3/config.old ~/dpi/rofi.small.config > ~/.config/i3/config

i3-msg restart
