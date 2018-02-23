FROM mhart/alpine-node:7

MAINTAINER Sergiy Borodulin

ENV NPM_PACKAGES "bootstrap-sass \
    breakpoint-sass \
    browser-sync \
    chroma-sass \
    del \
    font-awesome \
    fs \
    eslint \
    event-stream \
    gulp \
    gulp-autoprefixer \
    gulp-babel \
    gulp-cached \
    gulp-eslint \
    gulp-concat \
    gulp-cssmin \
    gulp-if \
    gulp-imagemin \
    gulp-jshint \
    gulp-jsmin \
    gulp-minify-html \
    gulp-notify \
    gulp-plumber \
    gulp-rename \
    gulp-size \
    gulp-sass \
    gulp-sass-glob \
    gulp-sass-lint \
    gulp-sourcemaps \
    gulp-strip-css-comments \
    gulp-useref \
    gulp-watch \
    gulp.spritesmith \
    sass-lint \
    js-yaml \
    jshint \
    node-sass-import-once \
    path \
    prompt \
    readable-stream \
    slick-carousel \
    susy"

RUN set -e \
  && apk add --no-cache git make g++ python \
  && npm install -g \
    susy@2 \
    $NPM_PACKAGES \
  && apk del --no-cache --purge make g++ python \
  && rm -rf /root/.npm /root/.config /tmp/npm*

VOLUME /work
WORKDIR /work

COPY docker-entrypoint.sh /usr/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]
