FROM skilldlabs/frontend:latest

MAINTAINER Sergiy Borodulin

ENV NPM_PACKAGES "bootstrap-sass\
    breakpoint-sass\
    browser-sync\
    chroma-sass\
    font-awesome\
    fs\
    gulp-autoprefixer\
    gulp-babel\
    gulp-concat\
    gulp-cssmin\
    gulp-if\
    gulp-imagemin\
    gulp-jshint\
    gulp-jsmin\
    gulp-minify-html\
    gulp-notify\
    gulp-plumber\
    gulp-rename\
    gulp-sass-glob\
    gulp-sass-lint\
    gulp-sourcemaps\
    gulp-strip-css-comments\
    gulp-useref\
    gulp-watch\
    gulp.spritesmith\
    js-yaml\
    jshint\
    node-sass\
    path\
    prompt\
    readable-stream\
    slick-carousel\
    susy"

RUN apk add --no-cache git \
  && npm install -g $NPM_PACKAGES

COPY docker-entrypoint.sh /usr/bin/
