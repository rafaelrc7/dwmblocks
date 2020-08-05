#!/bin/sh

echo "[ $(yay -Qqu | wc -l)] "

case $BUTTON in
	2) pkexec /home/rafael/.bin/upchk & ;; 
esac
