#!/bin/bash

killall polybar
polybar -c $HOME/.config/bspwm/bottom_dock/config.ini &
