#!/bin/sh 

case $BUTTON in
	1) notify-send "NVidia SMI" "<span font='monospace'>$(nvidia-smi)</span>" & ;;
	3) st -c htop -e nvtop & ;;
esac

gpu_usage=$(nvidia-smi | awk 'NR==10{print substr($13, 1, length($13))}')
gpu_temp=$(nvidia-smi | grep -Po '[0-9][0-9]*(?=C)')

printf "[GPU %3s %2d°C] " $gpu_usage $gpu_temp
