FROM mhart/alpine-node:9.10.0
RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD linux_amd64/gcsfuse /usr/local/bin
