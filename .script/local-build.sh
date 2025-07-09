#!/usr/bin/env sh

IMAGE_TAG="${IMAGE_TAG:-mesd}"
PUID="${PUID:-$(id -u)}"
PGID="${PGID:-$(id -g)}"

docker build --platform linux/amd64 --build-arg PUID="${PUID}" --build-arg PGID="${PGID}" -t "${IMAGE_TAG}" .
