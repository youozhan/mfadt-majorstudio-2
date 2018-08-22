#!/bin/bash
for f in data/04-25/*.png
do
    ./darknet detector test cfg/coco.data cfg/yolo.cfg yolo.weights "$f"
    echo "Saving result file for $f"
    filename=${f##*/}
    #echo $filename
    mv ./predictions.png data/04-25_results/"$filename"
done
