#!/bin/bash
for i; do
	if [ ! -d "$i" ]; then	# 디렉토리가 아니면, 존재하지 않으면
		echo "$i is not a directory" >&2
		exit 1
	fi
	for f in `ls $i`; do
		file $i/$f | grep "ASCII\|script"
	done
done

exit 0
