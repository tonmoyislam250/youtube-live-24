FROM ghcr.io/tonmoyislam12/livestream:dev
ADD . /usr/src/app/
CMD ./stream.sh
