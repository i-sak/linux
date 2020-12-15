#!/bin/bash

# directory chk
if [ ! -d $2 ]; then
	mkdir $2
	mkdir $2/music
	mkdir $2/media
	mkdir $2/img
	mkdir $2/text
	mkdir $2/shell
elif [ -d $2 ]; then	
	if [ ! -d $2/music ]; then
		mkdir $2/music
	elif [ ! -d $2/media ]; then
		mkdir $2/media
	elif [ ! -d $2/img ]; then
		mkdir $2/img
	elif [ ! -d $2/text ]; then
		mkdir $2/text
	elif [ ! -d $2/shell ]; then
		mkdir $2/shell
	fi
fi

img_c=1
mc_c=1
md_c=1
t_c=1
s_c=1

for file in `find -maxdepth 4`;
do
	ext=${file##*.}
	case $ext in
		jpg|png|PNG)
			cp $file $2/img/img$img_c.$ext
			let img_c++
			;;
		mp3)
			cp $file $2/music/music$mc_c.$ext
			let mc_c++	
			;;
		mp4)
			cp $file $2/media/media$md_c.$ext
			let md_c++
			;;
		txt)
			cp $file $2/text/text$t_c.$ext
			let t_c++
			;;
		sh)

			cp $file $2/shell/shell$s_c.$ext
			let s_c++
			;;
	esac
	
done

