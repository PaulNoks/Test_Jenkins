FROM alpine

RUN apk add --no-cache curl wget busybox-extras netcat-openbsd python3 py3-pip bash && \
    python3 -m venv /opt/venv
RUN /opt/venv/bin/pip install awscli && \
    apk --purge -v del py3-pip

ENV PATH="/opt/venv/bin:$PATH"

CMD ["tail", "-f", "/dev/null"]
