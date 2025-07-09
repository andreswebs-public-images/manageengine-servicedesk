#!/usr/bin/env sh

IMAGE_TAG="${IMAGE_TAG:-mesd}"

if [ ! -d "$(pwd)/local" ]; then
    mkdir -p "$(pwd)/local"
fi

docker run -it --rm --platform linux/amd64 -p 8080:8080 -p 8443:8443 --name manageengine-servicedesk -v "$(pwd)/local/ServiceDesk:/opt/manageengine/ServiceDesk" "${IMAGE_TAG}"
