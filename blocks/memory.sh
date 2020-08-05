#!/bin/sh

case $BUTTON in
	1) notify-send -t 3000 "Memoria" "<span font='monospace'>$(free -h)</span>" & ;;
	3) st -c htop -e htop --sort-key=PERCENT_MEM & ;;
esac

ram_usage=$(free | awk 'NR==2{printf "%0.0f\n", 100*$3/$2}')

printf "[RAM %2d%%]" $ram_usage 