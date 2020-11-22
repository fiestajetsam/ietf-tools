FROM alpine:3.12
LABEL maintainer="James <james.ietf@gmail.com>"

RUN sed -i '/edge/s/^#//' /etc/apk/repositories
RUN apk -U upgrade
RUN apk add rsync git ruby py3-pip
RUN apk add py3-pycountry \
            py3-i18naddress \
            xml2rfc \
            -X http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN pip install pyyaml pyflakes kitchen configargparse intervaltree jinja2

RUN gem install kramdown-rfc2629
