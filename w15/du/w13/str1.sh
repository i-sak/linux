#!/bin/bash

name="Chul-Soo.Kim"


fname=${name%.*} ## ${str%PATTERN} 스트링의 끝에 일치되는 패턴 삭제
lname=${name#*.}   ## ${str#PATTTERN} 스트링의 앞에 일치되는 패턴 삭제

echo "Name: $name"
echo "Fname: $fname"
echo "Lname: $lname"

#str="abcd#1234.123"
#rstr=${str%#*}
#lstr=${str#*.}
#echo "str : $str"
#echo "rstr : $rstr"
#echo "lstr : $lstr"

num="123-456-7890"
mnum=${num#*-}
lnum=${num#*-*-}
echo $num
echo $mnum
echo $lnum


