#!/bin/sh

eval "$(sp eval)" || { echo "" ; exit 0 ; }

case $BUTTON in
	1) sp play ;;
	3) notify-send "Current Track" "<span font='monospace'>$(sp current)</span>" & ;;
esac

case $(sp status) in
	"Error: Spotify is not running.") echo ""; exit 0;;
	"Playing") STATUS="";;
	"Paused") STATUS="";;
esac

MIN=$(date '+%S')

[ $((MIN % 2)) -eq 0 ] && TEXT=$SPOTIFY_TITLE || TEXT=$SPOTIFY_ARTIST

printf " %s %s %s" "" $STATUS $TEXT
