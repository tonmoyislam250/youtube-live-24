#!/bin/bash

while true; do
  ffmpeg -loglevel info -y -re \
         -f concat -safe 0 -i <((for f in ./Ben10S01/*.mkv; do path="$PWD/$f"; echo "file ${path@Q}"; done) | shuf) \
         -c:a aac -ar 44100 -b:a 128k \
         -c:v libx264 -pix_fmt yuv420p -preset veryfast -g 60 \
         -b:v 2500k -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
