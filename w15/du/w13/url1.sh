#!/bin/bash

url="https://www.google.com"

rhsmatch=${url%.*}
lhsmatch=${url#*.}

echo "url : $url"
echo "left : $rhsmatch"
echo "right : $lhsmatch"
