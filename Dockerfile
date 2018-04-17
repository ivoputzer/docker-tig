FROM alpine:edge
MAINTAINER Ivo von Putzer Reibegg <ivo.putzer@gmail.com>
RUN apk --no-cache --update add tig
WORKDIR /wd
VOLUME  /wd
ENTRYPOINT ["tig"]
