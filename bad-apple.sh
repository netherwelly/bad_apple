#! /bin/bash

sudo apt install jp2a ffmpeg

mkdir video

ffmpeg -i bad-apple.mp4 image%d.png > /video

for i in $(seq 1 6573); do
	
	clear
	jp2a video/image$i.png
	sleep 0.02
done
