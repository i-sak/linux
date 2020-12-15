#!/bin/bash

url="https://www.google.com:8080/index.html"
file=${url##*/}	# 파일
# port
temp=${url%/*}
port=${temp##*:} 

# domain
temp=${url%:*}
domain=${temp##*/}
protocol=${url%%:*}

echo "file : $file"
echo "port : $port"
echo "domain : $domain"
echo "protocol : $protocol"
echo "----------------------------"

tel="010-1234-5678"
t1=${tel%-*}
t2=${t1#*-}
t1=${t1%-*}
t3=${tel##*-}
echo "t1: $t1"
echo "t2: $t2"
echo "t3: $t3"
echo "----------------------------"

date="2019-12-18 am 4:22:51, wednesday"
# am pm
ap1=${date#* }
ap=${ap1%% *}

# hh mm ss
hms1=${date%,*}
hms=${hms1##* }

# day
day=${date##* }

# month/date
mmdd1=${date#*-}
mmdd=${mmdd1%% *}

echo "a/p m : $ap"
echo "hour/min/sec: $hms"
echo "day : $day"
echo "month/date : $mmdd"


