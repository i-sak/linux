#!/bin/bash

#str="HTML5+CSS3+Javascript"
#s1=${str%%+*}
#tmp=${str%+*}
#s2=${tmp#*+}
#s3=${str##*+}

#echo $s1
#echo $s2
#echo $s3
######################################
#str="1-23*4/6-75!9"

#s1=${str#*-}
#s2=${s1%/*}
#	   echo $s1
#	   echo $s2

str="java/linux!-web"
s1=${str%-*}
s2=${s1#*x}
echo $s2
	  


