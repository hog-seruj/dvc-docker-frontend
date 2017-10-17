FROM mhart/alpine-node:7

MAINTAINER Sergiy Borodulin

RUN apk add --no-cache make g++ python git

WORKDIR /work

COPY package.json /work/package.json

RUN npm install -g \
    gulp \
    gulp-sass

ENTRYPOINT ["/work/node_modules/.bin/gulp"]

CMD ["gulp"]
