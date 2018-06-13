FROM owncloud/alpine:edge

LABEL maintainer="ownCloud DevOps <devops@owncloud.com>" \
  org.label-schema.name="ownCloud Litmus" \
  org.label-schema.vendor="ownCloud GmbH" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/local/bin/litmus-wrapper"]

RUN apk update && \
  apk upgrade && \
  apk add build-base openssl-dev openssl && \
  wget -q -O - https://github.com/owncloud/core/files/1426448/litmus-0.13.tar.gz | tar xzvf - -C /tmp && \
  cd /tmp/litmus-0.13 && \
  curl -sSL https://gist.githubusercontent.com/tboerger/2f2cc274dcd245f90827cbf78ebdaab0/raw/acee242cc6ed68f5761b3808e29e24dd2ccbaf4b/unicode.patch | patch -p1 && \
  curl -sSL https://gist.githubusercontent.com/DeepDiver1975/ede654fbaf096640fb8b64ca55b1f40c/raw/5379444213a61469384d59e3bb41e93210eb7ac5/remove-locks.fail_complex_cond_put.patch | patch -p1 && \
  ./configure --with-ssl && \
  make && \
  PREFIX=/usr make install && \
  cd && \
  apk del build-base openssl-dev && \
  rm -rf /var/cache/apk/* /tmp/*

WORKDIR /root
COPY rootfs /
