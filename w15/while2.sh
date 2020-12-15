#!/bin/bash
# 입력한 점수 평균계산

SCORE="0"
AVERAGE="0"
SUM="0"
NUM="0"

while true; do
	echo -n "Enter your score [0-100%] "
	echo -n "('q' for quit): "
	read SCORE;	# SCORE로 입력값 읽기
	if (("$SCORE" < "0")) ||
	   (("$SCORE" > "100")); then
		echo "Be seruous. Common, try again: "
	elif [ "$SCORE" == "q" ]; then
		echo "Average rating: $AVERAGE%."
		break
	else
		SUM=$(($SUM + $SCORE))
		NUM=$(($NUM + 1))
		AVERAGE=$(($SUM / $NUM))
	fi
done
echo "Exiting."
	