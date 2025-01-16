#!/bin/bash
set -eux

IMAGE_NAME=efficient_zero_v2:latest

docker build \
    --build-arg USER_NAME=$(whoami) \
    --build-arg USER_UID=$(id -u) \
    --build-arg USER_GID=$(id -g) \
    -t ${IMAGE_NAME} .

docker run -it \
    --user $(id -u):$(id -g) \
    --gpus all \
    --ipc=host \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume=$HOME/work:$HOME/work \
    --volume=$HOME/data:$HOME/data \
    ${IMAGE_NAME} bash
