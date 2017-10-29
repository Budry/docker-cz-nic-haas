#!/usr/bin/env sh

IMAGE_NAME=budry/docker-cz-nic-haas
IMAGE_TAG=latest

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .