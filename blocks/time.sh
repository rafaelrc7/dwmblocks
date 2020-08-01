#!/bin/sh

TIME=$(date '+%H:%M:%S')

case $(date '+%I') in
	00) ICON="🕛";;
	01) ICON="🕐";;
	02) ICON="🕑";;
	03) ICON="🕒";;
	04) ICON="🕓";;
	05) ICON="🕔";;
	06) ICON="🕕";;
	07) ICON="🕖";;
	08) ICON="🕗";;
	09) ICON="🕘";;
	10) ICON="🕙";;
	11) ICON="🕚";;
	12) ICON="🕛";;
esac

if [ $TIME == "00:00:00" ]; then
	kill -36 $(pidof dwmblocks)
fi

case $BUTTON in
	1) notify-send "1";;
	2) notify-send "2";;
	3) notify-send "3";;
	4) notify-send "4";;
	5) notify-send "5";;
esac

echo "[${ICON} ${TIME}]"
