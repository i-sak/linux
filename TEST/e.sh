#!/bin/bash

str="da.ta/*linux.java-va"

s1=${str%t*}
echo "da. : " $s1

s2=${str%l*}
x=${s2#*\/}
echo "*:"\$x
#s3=${str#*/}
#s4=${s3%l*}

#echo $s2
#echo $s3
#echo $s4




