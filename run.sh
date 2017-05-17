#!/bin/bash

echo "Please add source video file"
read svideo

echo "Please add source audio file, id 1"
read saudio1

echo "Please add source audio file, id 2"
read saudio2

echo "Please add source audio file, id 3"
read saudio3

echo "Please add source audio file, id 4"
read saudio4


echo "Please add source audio file, id 5"
read saudio5

echo "Please add source audio file, id 6"
read saudio6

echo "Please add source audio file, id 7"
read saudio7

echo "Please add source audio file, id 8"
read saudio8

echo "Please add source audio file, id 9"
read saudio9

echo "Please add source audio file, id 10"
read saudio10










echo "please add output file name without extension"
read resa

echo "Please add audio file language,  example en-us"
echo tounge

$out=mp4

sourcevideo=$svideo
sourceaudio1=$saudio1
sourceaudio2=$saudio2
sourceaudio3=$saudio3
sourceaudio4=$saudio4
sourceaudio5=$saudio5
sourceaudio6=$saudio6
sourceaudio7=$saudio7
sourceaudio8=$saudio8
sourceaudio9=$saudio9
sourceaudio10=$saudio10









result=$resa
lang=$tounge


ffmpeg -i $sourcevideo -i $sourceaudio1 -i $sourceaudio2 -i $sourceaudio3 -i $sourceaudio4 -i $sourceaudio5 -i $sourceaudio6 -i $sourceaudio7 -i $sourceaudio8  -i $sourceaudio10 -map 0:v -map 0:a -map 1:a -map 2:a -map 3:a -map 4:a -map 5:a -map 6:a -map 7:a -map 8:a -map 9:a -map 10:a  -vcodec copy $result-$lang.$out

