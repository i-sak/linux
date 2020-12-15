#!/bin/bash
for i; do	# $@
	if [ -d "$i" ]; then
		echo "$i is a directory"
	fi
	for f in `ls $1`; do
		file $i/$f | grep "ASCII\|script"
	done
done
exit 0

