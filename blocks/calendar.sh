#!/bin/sh

echo "[ $(date '+%a, %d %b')]"

case $BUTTON in
	1) notify-send "This Month" "<span font='monospace'>$(cal --color=always | sed "s/..7m/<b><span color=\"red\">/;s/..27m/<\/span><\/b>/")</span>" & ;;
esac
