FROM alpine:3.20

RUN apk add --no-cache curl wget busybox-extras netcat-openbsd python3 py3-pip bash && \
    pip3 install awscli && \
    apk --purge -v del py3-pip

CMD ["tail", "-f", "/dev/null"]
