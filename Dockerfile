ARG ALPINE_VERSION="3.4"
FROM alpine:${ALPINE_VERSION}

ARG CURATOR_VERSION="5.0.4"
RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==${CURATOR_VERSION} && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curator"]
