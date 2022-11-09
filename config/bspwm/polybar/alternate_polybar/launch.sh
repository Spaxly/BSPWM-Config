#!/bin/bash

killall polybar

polybar -c ~/.config/bspwm/polybar/alternate_polybar/config.ini left &
polybar -c ~/.config/bspwm/polybar/alternate_polybar/config.ini center &
polybar -c ~/.config/bspwm/polybar/alternate_polybar/config.ini right & 
polybar -c ~/.config/bspwm/polybar/alternate_polybar/config.ini spotify-module &
polybar -c ~/.config/bspwm/polybar/alternate_polybar/bottom_dock/config.ini &
