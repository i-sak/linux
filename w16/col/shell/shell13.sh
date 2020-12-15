#!/bin/bash
# 이미지 파일을 모두 일련번호 매기기
# Linux Shell Scripting Cookbook 2nd ed.,  p.96

count=1;
for img in `find $1 -maxdepth 2 -iname '*.jpg' -o -iname '*.png' -type f`
do
	new=image-$count.${img##*.}
	echo "Renaming $img to $new"
	cp "$img" "$2/$new"
	let count++
done

