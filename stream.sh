#!/bin/bash

VIDEO_DIR=./"Ben 10 Alien Force 2008 Season 1 Complete Web 720p x264 [i_c]"/

while true; do
  VIDEO_FILE=$(ls $VIDEO_DIR | shuf -n 1)
  ffmpeg -loglevel info -stream_loop -1 \
         -y -re -i $VIDEO_DIR/$VIDEO_FILE \
         -c:a aac -ar 44100 -b:a 128k \
         -c:v libx264 -pix_fmt yuv420p -preset veryfast -g 60 \
         -b:v 2500k -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
