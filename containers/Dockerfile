FROM alpine:latest
RUN apk update
RUN apk add vim
RUN apk add py3-pip
RUN apk --no-cache add curl

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN apk add --no-cache python3 py3-pip

COPY ./index.html /home/btm0050/containers/index.html
