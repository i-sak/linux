#!/bin/bash

str="human.smile.jpg"

front=${str%%.*}	## 뒤에서부터 최대 일치되는 패턴 삭제
rear=${str##*.}		## 앞에서부터 최대 일치되는 패턴 삭제

echo "String: $str"
echo "Front: $front"
echo "Rear: $rear"
