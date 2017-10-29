FROM python:3

MAINTAINER Ondřej Zráuba <info@zaruba-ondrej.cz> (https://zaruba-ondrej.cz)

RUN apt-get update && \
	apt-get install -y sshpass && \
	pip3 install haas-proxy

COPY startup.sh /bin/startup.sh

VOLUME /var/log

EXPOSE 2222

CMD ["sh", "/bin/startup.sh"]