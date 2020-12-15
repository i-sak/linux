#!/bin/bash
# 이미지 파일을 찾기

for img in `find $1 -maxdepth 2 -iname '*.jpg' -o -iname '*.png' -type f`
do
	echo "$img"
done

