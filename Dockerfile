FROM mhart/alpine-node:9.10.0
RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD linux_amd64/gcsfuse /usr/local/bin
RUN apk add --update --no-cache libc6-compat python alpine-sdk && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -rf /var/cache/apk/* /tmp/* && \
    rm -r /root/.cache