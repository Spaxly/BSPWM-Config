#!/bin/bash

find ~/.config/bspwm/wallpapers/ -name '*.jpg' -o -name '*.png' | rofi -dmenu -i -l 20 -p 'Change Wallpaper:' -theme ~/.config/bspwm/rofi/config/style-1.rasi | xargs feh --bg-scale
