#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build & push one image
  then
    sh "${DIR}"/build.sh "${TAG}"
    docker push stephenneal/python-flask:"${TAG}"

  # Build & push all images
  else
    sh "${DIR}"/build.sh

    docker push stephenneal/python-flask:3.7
    docker push stephenneal/python-flask:3.7-alpine
    docker push stephenneal/python-flask:3.7-buster
    docker push stephenneal/python-flask:3.7-slim
    docker push stephenneal/python-flask:3.7-slim-stretch
    docker push stephenneal/python-flask:3.7-stretch
    docker push stephenneal/python-flask:3.8-slim
    docker push stephenneal/python-flask:3.9-buster
    docker push stephenneal/python-flask:3.9-slim
    docker push stephenneal/python-flask:3.10-buster
    docker push stephenneal/python-flask:3.10-slim
    docker push stephenneal/python-flask:3.10-rc-buster
    docker push stephenneal/python-flask:3.11-buster
    docker push stephenneal/python-flask:3.11-slim
    docker push stephenneal/python-flask:3.12-buster
    docker push stephenneal/python-flask:3.12-slim
fi