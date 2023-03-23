#!/bin/bash

while true; do
  VIDEO_FILE=$(ls ./Ben10S01/ | shuf -n 1)
  ffmpeg -loglevel info -stream_loop -1 \
         -y -re -i ./Ben10S01/$VIDEO_FILE \
         -c:a aac -ar 44100 -b:a 128k \
         -c:v libx264 -pix_fmt yuv420p -preset veryfast -g 60 \
         -b:v 2500k -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
