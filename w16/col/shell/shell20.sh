#!/bin/bash

if [ $# -eq 0 ]; then
	echo -n "files and directories: "
	ls | wc -l
elif [ $# -eq 1 ]; then
	echo -n "files and directories: "
	ls $1 | wc -l
else
	echo "Usage : $0 directory" 1>&2
	exit 1
fi

exit 0
