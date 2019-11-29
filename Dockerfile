FROM alpine:3.10

RUN apk update && apk add py-pip bash
RUN pip install s3cmd

ADD --chown=nobody:nobody s3cfg .s3cfg

USER nobody
