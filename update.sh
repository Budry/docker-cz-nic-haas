#!/usr/bin/env sh

BASEDIR=$(pwd)/$(dirname $0)

help() {
    echo "Usages: ${0} <directory> <tag>"
}

if [ -z "$1" ]; then
    echo "Missing <directory> argument!"
    help
    exit 1
else
	DIRECTORY=$1
fi

if [ -z "$2" ]; then
    echo "Missing <tag> argument!"
    help
    exit 1
else
	IMAGE_TAG=$2
fi

IMAGE_NAME=budry/docker-cz-nic-haas

cd ${DIRECTORY}
docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
cd ${BASEDIR}