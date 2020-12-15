#!/bin/bash
# =========================================================================
# 컴퓨터공학전공 2017E7441 김이삭
# $@ 인자로 들어오는 모든 것
#
# =========================================================================

function rec_play()
{
		
	f_dir=$1	# $1 directory
	f_media=$2	# $2 media count
	f_FLAG=$3	# $3 FLAG	

	i=0
	for f in `ls $f_dir`; do	# file의 개 수 만큼 반복
		echo $f
		file $f_dir/$f | grep "Media" && vlc $f_dir/$f & 2> /dev/null
		if [ $f_media -ge $(($f_FLAG-1)) ]; then	# 조건식
			break
		fi
		let "f_media += 1"				# 증감식
	done	
	return $(($f_FLAG-$f_media+4))
}


if [ $# -ne 2 ]; then		# 인자가 2개가 아닌 경우
	echo "Usage : $0 -number directory"
elif [ $# -eq 2 ]; then		# 인자가 2개인 경우
	v=$1			# 첫번째 인자 받기
	r=${v#-}		# -작대기 제거
	r=${r//[0-9]/}		# 숫자만 제거하기 
	
	if [ -n "$r" ]; then	# 길이가 0이 아니면 true
		echo "$v is not number"; exit 1 # 문자면 종료
	else	# 첫 번째 인자가 숫자면,
		if [ $1 -lt '-9' ] || [ $1 -ge '0' ]; then # 범위를 벗어난 경우	
			echo "Usage : $0 -[number:1~9] directory" 2>/dev/null; exit 1	
		else # 범위[ -1 ~ -9]면
			FLAG=$1
			let "FLAG *= -1"
		fi
		
		if [ ! -d $2 ]; then	# 두 번째 인자 검사, 디렉토리가 아니면
			echo "Usage : $0 -number directory"; exit 1
		else
			i=0			# 반복문 카운팅
			media=0			# media 개 수
			for f in `ls $2`; do	# file의 개 수 만큼 반복
				file $2/$f | grep "Media" && vlc $2/$f &			
				#file $2/$f | grep "Media" && media=$(($media+1))
				
				if [ $i -ge $(($FLAG-1)) ]; then	# 조건식
					break
				fi		
				let "i += 1" 
			done

			# 첫 번째 인자의 수 보다 영상의 개수가 적으면,
			if [ $media -lt $FLAG ]; then
				rec_play $2 $media $FLAG
				echo "11 $? 11" 
			fi
		fi
	fi
fi

exit 0 
