#!/bin/bash
#
name="chihiro"
num=1

for file in *.wav; do
     # echo "$file"
     # echo "chihiro_$num.wav"
     mv "$file" "chihiro_$num.wav"
     num=$(( num+1 ))
done
