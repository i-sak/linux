#!/bin/bash

str="HTML5+CSS3+Javascript"

s1=${str%%+*}
tmp=${str%+*}
s2=${tmp#*+}
s3=${str##*+}

echo $s1
echo $s2
echo $s3

