#!/bin/bash
# display the # of files and directories

echo $#     # 인자의 개수는 하나다
echo $0
echo $1

if [ $# -eq 0 ]; then
	echo -n "files and directories: "
	ls | wc -l
elif [ $# -eq 1 ]; then
	echo -n "files and directories: "
	ls $1 | wc -l
else
	echo "Usage : $0 directory" 1>&2
	exit 9
fi
exit 0
