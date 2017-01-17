FROM owncloud/alpine:latest
MAINTAINER ownCloud DevOps <devops@owncloud.com>

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

ENTRYPOINT ["/usr/local/bin/litmus"]

RUN apk update && \
  apk add openssl && \
  apk add --virtual build-dependencies build-base openssl-dev && \
  wget -q -O - http://www.webdav.org/neon/litmus/litmus-0.13.tar.gz | tar xzvf - -C /tmp && \
  cd /tmp/litmus-0.13 && \
  ./configure --with-ssl && \
  make && \
  PREFIX=/usr make install && \
  cd && \
  apk del build-dependencies && \
  rm -rf /var/cache/apk/* /tmp/*

COPY rootfs /

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/owncloud-docker/litmus.git"
LABEL org.label-schema.name="ownCloud Litmus"
LABEL org.label-schema.vendor="ownCloud GmbH"
LABEL org.label-schema.schema-version="1.0"
