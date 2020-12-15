#!/bin/bash
if [ $TERM != "xterm-256color" ]; then
	echo "current terminal is not xterminal"
	exit 1
fi

i=0
while [ $i -lt 4 ]; do
	gnome-terminal &
	let "i += 1"
done

