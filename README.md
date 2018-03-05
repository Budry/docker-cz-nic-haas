# Docker image for HaaS proxy

Unofficial Docker image for HaaS [https://haas.nic.cz/](https://haas.nic.cz/) proxy

**NOTE:** Tag corresponds to the version of haas-proxy

## Docker Image

[Docker image on Docker HUB](https://hub.docker.com/r/budry/docker-cz-nic-haas/)

### Supported tags and respective `Dockerfile` links

**NOTE:** Tag corresponds to the version of haas-proxy

* `1.6`, `latest` - standard version [(Dockerfile)](https://github.com/Budry/docker-cz-nic-haas/blob/v1.6/standard/Dockerfile)
* `1.6-arm`, `arm` build for arm devices (RaspberryPI) [(Dockerfile)](https://github.com/Budry/docker-cz-nic-haas/blob/v1.6/arm/Dockerfile)
* `1.3`, `latest` - standard version [(Dockerfile)](https://github.com/Budry/docker-cz-nic-haas/blob/v1.3/standard/Dockerfile)
* `1.3-arm`, `arm` - build for arm devices (RaspberryPI) [(Dockerfile)](https://github.com/Budry/docker-cz-nic-haas/blob/v1.3/arm/Dockerfile)
* `1.2` - standard version [(Dockerfile)](https://github.com/Budry/docker-cz-nic-haas/blob/v1.2/standard/Dockerfile)
* `1.2-arm`- build for arm devices (RaspberryPI) [(Dockerfile)](https://github.com/Budry/docker-cz-nic-haas/blob/v1.2/arm/Dockerfile)

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
	-v /path/to/your/log/directory:/var/log \
	--restart always
	budry/docker-cz-nic-haas
```
