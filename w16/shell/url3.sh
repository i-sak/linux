#!/bin/bash

url="https://www.google.com"

protocol=${url%%:*} # 뒤에서 자르기
address=${url##*/}  # 앞에서 자르기

echo "url	: $url "
echo "protocol	: $protocol"
echo "address	: $address"
