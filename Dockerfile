FROM python:3-alpine

MAINTAINER Ondřej Zráuba <info@zaruba-ondrej.cz> (https://zaruba-ondrej.cz)

RUN apk --no-cache --update add \
	sshpass openssh openssl-dev libffi-dev musl-dev gcc && \
	pip3 install haas-proxy

COPY startup.sh /bin/startup.sh

VOLUME /var/log

EXPOSE 2222

CMD ["sh", "/bin/startup.sh"]