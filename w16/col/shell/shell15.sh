#!/bin/bash

url="https://www.google.com"

lhsmatch=${url##*/}

echo "url	: $url "
echo "right	: $lhsmatch" 	## 예상결과www.google.com

