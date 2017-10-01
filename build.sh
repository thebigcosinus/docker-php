#!/bin/bash -e

BASE_DIR=$(cd $(dirname $0); pwd)

DOCKER_REPOSITORY="ecosinus/docker-php"
DOCKER_IMAGE="${DOCKER_REPOSITORY}"
DOCKER_TAG="1.0.0"

docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ${BASE_DIR}

echo "Generated image : ${DOCKER_IMAGE}:${DOCKER_TAG}"
