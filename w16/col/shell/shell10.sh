#!/bin/bash

name="Chul-Soo.Kim"

# fname=${name%.*} ## ${str%PATTERN} 스트링의 끝에 일치되는 패턴 삭제

lname=${name#*.} ## ${str#PATTERN} 스트링의 앞에 일치되는 패턴 삭제

echo "Name: $name"
echo "Lname: $lname"
