#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Regulus-Light/Regulus.conf &> /dev/null &

exit
