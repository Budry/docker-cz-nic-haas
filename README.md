# Docker image for HaaS proxy

Unofficial Docker image for HaaS [https://haas.nic.cz/](https://haas.nic.cz/) proxy

## How to use

1. Pull Docker image from Docker HUB 
```bash
$ docker pull budry/docker-cz-nic-hass:latest
```
2. Run image. You must set DEVICE_TOKEN and it's recommended mount log file by volume option
```bash
$ docker run \
	-d \ 
	-e DEVICE_TOKEN=XXX \
	-v ./haas.log:/var/log/haas.log \
	budry/docker-cz-nic-hass
```