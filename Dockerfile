FROM alpine:3.16
RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app/
RUN apk update && apk add --no-cache bash ffmpeg wget unzip python3 py3-pip
RUN pip3 install pip3 install --no-cache-dir -r requirements.txt
ADD . /usr/src/app/
RUN bash download.sh
CMD ./stream.sh
