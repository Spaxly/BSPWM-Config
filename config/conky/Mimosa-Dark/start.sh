#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Mimosa-Dark/Mimosa.conf &> /dev/null &

exit
