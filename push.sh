#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Optional PLATFORM argument (if none provided, both will be built)
PLATFORM=${2:-"linux/amd64,linux/arm64"}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build & push one image
  then
    docker buildx build \
			--push \
			-t stephenneal/python-flask:"${TAG}" \
			--platform "${PLATFORM}" \
			"${DIR}"/"${TAG}"/

  # Build & push all images
  else
    sh "${DIR}"/build.sh

    docker push stephenneal/python-flask:3.8-slim
    docker push stephenneal/python-flask:3.8-slim-builder
    docker push stephenneal/python-flask:3.9-buster
    docker push stephenneal/python-flask:3.9-slim
    docker push stephenneal/python-flask:3.9-slim-builder
    docker push stephenneal/python-flask:3.10-buster
    docker push stephenneal/python-flask:3.10-slim
    docker push stephenneal/python-flask:3.10-slim-builder
    docker push stephenneal/python-flask:3.11-buster
    docker push stephenneal/python-flask:3.11-slim
    docker push stephenneal/python-flask:3.11-slim-builder
    docker push stephenneal/python-flask:3.12-bullseye
    docker push stephenneal/python-flask:3.12-slim
    docker push stephenneal/python-flask:3.12-slim-builder
    docker push stephenneal/python-flask:3.13-bullseye
    docker push stephenneal/python-flask:3.13-slim
    docker push stephenneal/python-flask:3.13-slim-builder
fi