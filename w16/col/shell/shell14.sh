#!/bin/bash

name="Chul-Soo.Kim.lee"

fname=${name%.*} ## ${str%PATTERN} 스트링의 끝에 일치되는 패턴 삭제

echo "Name: $name"
echo "Fname: $fname"
