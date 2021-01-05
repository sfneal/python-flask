#!/usr/bin/env bash

# Base directory containing source code
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
[ "$TAG" != null ]

  # Only build one image
  then
    docker build -t stephenneal/python-flask:"${TAG}" "${DIR}"/"${TAG}"/

  # Build all images
  else
    docker build -t stephenneal/python-flask:3.7 "${DIR}"/3.7/
    docker build -t stephenneal/python-flask:3.7-alpine "${DIR}"/3.7-alpine/
    docker build -t stephenneal/python-flask:3.7-buster "${DIR}"/3.7-buster/
    docker build -t stephenneal/python-flask:3.7-slim "${DIR}"/3.7-slim/
    docker build -t stephenneal/python-flask:3.7-slim-stretch "${DIR}"/3.7-slim-stretch/
    docker build -t stephenneal/python-flask:3.7-stretch "${DIR}"/3.7-stretch/
    docker build -t stephenneal/python-flask:3.8-slim "${DIR}"/3.8-slim/
    docker build -t stephenneal/python-flask:3.9-buster "${DIR}"/3.9-buster/
    docker build -t stephenneal/python-flask:3.9-slim "${DIR}"/3.9-slim/
    docker build -t stephenneal/python-flask:3.10-rc-buster "${DIR}"/3.10-rc-buster/
fi