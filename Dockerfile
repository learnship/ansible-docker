FROM alpine

RUN apk --no-cache add git py-pip python openssh-client
RUN apk --no-cache add --virtual build-dependencies gcc python-dev musl-dev libffi-dev openssl-dev make \
  && pip install ansible \
  && apk del build-dependencies
CMD ansible
LABEL maintainer="info@learnship.com"
