#!/bin/sh

killall polybar
polybar -c $HOME/.config/bspwm/polybar/minimal_bar/config.ini
