#!/bin/bash
#


for file in *.wav; do
     # echo "$file%03d"
     # % sign extract left string, # sign extract right string
     seg_file="${file%.wav}"
     # echo "${seg_file}"
     # echo "chihiro_$num.wav"
     # mv "$file" "chihiro_$num.wav"
     # num=$(( num+1 ))
     ffmpeg -i "$file" -f segment -segment_time 8 -c copy "seg_out/${seg_file}_%03d.wav"
done
