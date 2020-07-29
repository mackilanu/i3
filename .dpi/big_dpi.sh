#!/bin/bash

rm ~/.Xresources

touch ~/.Xresources

cat <<EOF > ~/.Xresources
Xft.dpi: 144
EOF

xrdb -merge ~/.Xresources

xrandr --output eDP-1 --primary --mode 2160x1440 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off

cat ~/.config/i3/config.old ~/dpi/rofi.big.config > ~/.config/i3/config

i3-msg restart
