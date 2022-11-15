#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Mimosa-Light/Mimosa-light.conf &> /dev/null &

exit
