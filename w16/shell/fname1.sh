#!/bin/bash

file="smile.jpg"

name=${file%.*}
ext=${file#*.}

echo "File: $file"
echo "Name: $name"
echo "Ext : $ext"
