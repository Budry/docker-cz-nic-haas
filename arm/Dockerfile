FROM arm32v7/python:3

MAINTAINER Ondřej Zráuba <info@zaruba-ondrej.cz> (https://zaruba-ondrej.cz)



RUN apt-get update && \
	apt-get install -y sshpass

ENV HAAS_PROXY_VERSION 1.3

RUN pip3 install haas-proxy==${HAAS_PROXY_VERSION}

COPY startup.sh /bin/startup.sh

VOLUME /var/log

EXPOSE 2222

CMD ["sh", "/bin/startup.sh"]
