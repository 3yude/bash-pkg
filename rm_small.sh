#!/bin/bash
#

# delete file which size smaller than "$limit"

limit=900

for file in *.wav
do
    res=$(du -hk ${file})
    res_arr=($res)
    size=res_arr[0]
    # echo "${res_arr:1:1}"
    if (( size < limit )); then
        rm ${file}
        echo "rm ${file}"
        echo "size: ${res_arr[0]}"
    fi

done
