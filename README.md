# Docker image for HaaS proxy

Unofficial Docker image for HaaS [https://haas.nic.cz/](https://haas.nic.cz/) proxy

**NOTE:** Tag corresponds to the version of haas-proxy

## How to use

1. Pull Docker image from Docker HUB 
```bash
$ docker pull budry/docker-cz-nic-haas:latest
```
2. Run image. You must set DEVICE_TOKEN and it's recommended mount log file by volume option
```bash
$ docker run \
	-d \ 
	-e DEVICE_TOKEN=XXX \
	-v /path/to/your/haas.log:/var/log/haas.log \
	--restart always
	budry/docker-cz-nic-haas
```