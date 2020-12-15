#!/bin/bash

PS3="Your choice: "
echo -n "This script can make any of the "
echo "files in this directory private."
echo -n "Enter the number of the file "
echo "you want to protect:"

select FILENAME;
do
	if [ $REPLY == "q" ]; then
		break
	fi
	echo -n "You picked $FILENAME, "
	echo "it is now only accessible to you."
	chmod go-rwx "$FILENAME"
done
