#!/bin/bash
# 이미지 파일을 모두 일련번호 매기기
# Linux Shell Scripting Cookbook 2nd ed., p.96

count=1;

if [ ! -d $2 ]; then # 디렉터리가 존재하지 않으면
	mkdir $2     # 디렉터리 생성
fi

for img in `find $1 -maxdepth 2 -iname '*.jpg' -o -iname '*.png' -type f`
do
	new=image-$count.${img##*.}
	echo "Renaming $img to $new"
	cp "$img" "$2/$new"
	let count++
done
