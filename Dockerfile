FROM alpine

RUN apk --no-cache add git py-pip gcc python-dev musl-dev libffi-dev openssl-dev make openssh-client
RUN pip install ansible
CMD ansible
LABEL maintainer="info@learnship.com"
