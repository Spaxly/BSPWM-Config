#!/bin/bash

killall polybar
polybar -c $HOME/.config/bspwm/polybar/alternate_polybar/non_floating_bar/config.ini &
