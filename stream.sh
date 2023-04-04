#!/bin/bash
pwd
cd /usr/src/app
rm -rf * && mkdir temp
gdown $LINK -O temp --folder
#mkdir -pv ncs && unzip -d ./ncs/ -j *.zip
rm -rf *.zip

while true; do
  ffmpeg -loglevel info -y -re \
         -f concat -safe 0 -i <((for f in ./temp/*.mkv; do path="$PWD/$f"; echo "file ${path@Q}"; done) | shuf) \
         -c:a aac -ar 44100 -b:a 128k \
         -c:v libx264 -pix_fmt yuv420p -preset veryfast -g 60 \
         -b:v 2500k -f flv $STREAM_URL/$STREAM_KEY
done
