FROM ghcr.io/tonmoyislam12/livestream:dev
ADD . /usr/src/app/
RUN bash download.sh
CMD ./stream.sh
