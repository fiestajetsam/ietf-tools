FROM alpine:3.7

RUN apk -U upgrade
RUN apk add rsync
