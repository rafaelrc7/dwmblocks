#!/bin/sh

case $BUTTON in
	1) pavucontrol& ;;
	2) amixer -q set Master toggle ;;
	3) amixer -q set Capture toggle ;;
	4) amixer -q set Master 1%+ ;;
	5) amixer -q set Master 1%- ;;
esac

vol=$(amixer sget Master | grep -m1 -oP "[0-9]*(?=%)")

if [ $vol -gt 66 ]
then
	icon=
else
	if [ $vol -gt 33 ]
	then
		icon=
	else
		icon=
	fi
fi

(amixer get Capture | grep -q "off") && mic= || mic=

(amixer sget Master | grep -q "off") && echo "[${mic} ${vol}]" || echo "[${mic} ${icon}${vol}]"