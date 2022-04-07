FROM alpine:3.14

RUN apk --update add socat

ENTRYPOINT ["socat"]
