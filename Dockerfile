FROM mhart/alpine-node:8

MAINTAINER Sergiy Borodulin

COPY package.json /srv/package.json

RUN set -ex &&\
  cd /srv &&\
  apk add --no-cache git make g++ python autoconf automake nasm libjpeg-turbo-dev zlib-dev &&\
  npm install &&\
  apk del --no-cache --purge make g++ python autoconf automake nasm libjpeg-turbo-dev zlib-dev &&\
  ln -s /srv/node_modules/.bin/gulp /usr/bin/gulp &&\
  rm -rf /root/.npm /root/.config /tmp/npm* /tmp/phantomjs

COPY docker-entrypoint.sh /usr/bin/

VOLUME /work
WORKDIR /work

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["gulp"]
