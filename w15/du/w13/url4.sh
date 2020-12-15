#!/bin/bash

url="https:8080//www.google.com"

protocol=${url%%:*}
port=${url##*:}
port=${port%%/*}
address=${url##*/}

echo "url : $url"
echo "protocol : $protocol"
echo "port : $port"
echo "address : $address"
