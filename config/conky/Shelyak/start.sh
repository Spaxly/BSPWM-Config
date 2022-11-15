#!/bin/bash

killall conky
conky -c $HOME/.config/conky/Shelyak/Shelyak.conf &> /dev/null &
