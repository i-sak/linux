#!/bin/bash
# file name : collect.sh
# 첫번째 인자 working directory 에 있는 내용을
# 두번째 인자의 directroy가 되는 collect dir 하위에
# image, video, office etc.. 디렉토리 별로 모아진다.
# 파일의 확장자는 그대로이고, 파일이름은 시리얼 넘버로 매겨진다.
# 각 파일 종류 찾아서 저장

img_count=1;
audio_count=1;
media_count=1;
docs_count=1;

# 디렉토리가 없으면 생성한다.
if [ ! -d $2 ]; then
	mkdir $2
	mkdir $2/image
	mkdir $2/audio
	mkdir $2/media
	mkdir $2/docs
fi

for file in `find $1 -maxdepth 3 -iname '*.jpg' -o -iname '*.png' -o -iname '*.mp3' -o -iname '*.mp4' -o -iname '*.txt' -o -iname '*.avi'`
do
	extent=${file##*.}	# 확장자 따오기	
	if [ 'jpg' == $extent ]; then
		new=image-$img_count.${extent}
		cp "$file" "$2/image/${new}"
		let img_count++
	elif [ 'png' == $extent ]; then
		new=image-$img_count.${extent}
		cp "$file" "$2/image/${new}"
		let img_count++
	elif [ 'mp3' == $extent ]; then
		new=audio-$audio_count.${extent}
		cp "$file" "$2/audio/${new}"
		let audio_count++
	elif [ 'mp4' == $extent ]; then
		new=media-$media_count.${extent}
		cp "$file" "$2/media/${new}"
		let media_count++
	elif [ 'txt' == $extent ]; then
		new=docs-$docs_count.${extent}
		cp "$file" "$2/docs/${new}"
		let docs_count++
	fi
done
