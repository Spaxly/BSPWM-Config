#!/bin/bash

killall polybar
polybar -c $HOME/.config/bspwm/polybar/config.ini &
