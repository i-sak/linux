#!/bin/bash

if [ ! -d $2 ]; then
	mkdir $2
	mkdir $2/sh/
	mkdir $2/img/
elif [ -d $2 ]; then
	
	if [ ! -d $2/sh ]; then
		mkdir $2/sh
	elif [ ! -d $2/img ]; then
		mkdir $2/img
	fi
fi


sh_i=0
im_i=0

for file in `find $1 -maxdepth 4`
do
	ext=${file##*.}
	case $ext in
		jpg|png)
			cp $file $2/img/image-$im_i.$ext
			let im_i++
			;;
		sh)
			cp $file $2/sh/shell-$sh_i.$ext
			let sh_i++
			;;
	esac

done
