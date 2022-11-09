#!/bin/bash

killall polybar
polybar -c $HOME/.config/bspwm/polybar/alternate_polybar/bottom_dock/config.ini &
