pwd
cd /usr/src/app
#gdown https://drive.google.com/uc?id=17W1-cSkJzERQ7lOGAQaCVNOPUIlw8c9B
#mkdir -pv ncs && unzip -d ./ncs/ -j ncs.zip
#rm -rf ncs.zip
mkdir -pv youtube
yt-dlp -f 'bv*[height=1080][ext=mp4]+ba' --download-archive videos.txt https://youtube.com/playlist?list=PLRBp0Fe2GpgmsW46rJyudVFlY6IYjFBIK -o 'youtube/%(id)s.%(ext)s'
ls -a youtube
