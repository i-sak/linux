#!/bin/bash

name="Chul-Soo.Kim"

fname=${name%.*} ## ${str%PATTERN} 스트링의 끝에 일치되는 패턴 삭제

echo "Name: $name"
echo "Fname: $fname"

str="abcd#1234.123"
rstr=${str%#*}

echo "str : $str"
echo "rstr : $rstr"
