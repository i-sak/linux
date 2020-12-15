#!/bin/bash
# =========================================================================
# 컴퓨터공학전공 2017E7441 김이삭
# Shell Script Write
# file Name : shopping1.sh
#
# Usage : ./shopping1.sh -[1~9] directory
# mobile : 010-7577-7263
# e-mail : isaac7263@naver.com
# =========================================================================

function med_play()
{
	dir=$1		# $1 directory
	cnt=$2		# $2 number of player : -number option
	med=0 		#`getMediaCount $dir` # 실제 미디어 개수	
	i=0

	for f in `ls $dir`; do	# media count
		file $dir/$f | grep "Media" > /dev/null && let "med += 1"
	done	 
	echo -e "dir: $dir, \ncnt: $cnt, \nmed: $med, \ni: $i"	

	while [ $i -lt $cnt ]; do
		for f in `ls $dir`; do	
			file $dir/$f | grep "Media" && vlc $dir/$f &	
			file $dir/$f | grep "Media" > /dev/null && let "i+=1"
			if [ $i -ge $cnt ]; then
				break
			fi
		done
	done
}

if [ $# -ne 2 ]; then		# 인자가 2개가 아닌 경우
	echo "Usage : $0 -number directory"
elif [ $# -eq 2 ]; then		# 인자가 2개인 경우
	CNT=$1			# 첫번째 인자 받기
	r=${CNT#-}		# -작대기 제거
	r=${r//[0-9]/}		# 숫자만 제거하기 
	
	if [ -n "$r" ]; then	# 길이가 0이 아니면 true
		echo "$1 is not a number"; exit 1 # 문자면 종료
	else	# 첫 번째 인자가 숫자면,
		if [ $1 -lt '-9' ] || [ $1 -ge '0' ]; then # 범위를 벗어난 경우	
			echo "Usage : $0 -[number:1~9] directory" 2>/dev/null; exit 1	
		fi
		let "CNT *= -1"
	
		if [ ! -d $2 ]; then	# 두 번째 인자 검사, 디렉토리가 아니면
			echo "Usage : $0 -number directory"; exit 1
		else # directory면,	
			med_play $2 $CNT
		fi
	fi
fi
exit 0 
