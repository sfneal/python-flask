#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker build -t stephenneal/python-flask:3.7 "${DIR}"/3.7/
docker build -t stephenneal/python-flask:3.7-alpine "${DIR}"/3.7-alpine/
docker build -t stephenneal/python-flask:3.7-buster "${DIR}"/3.7-buster/
docker build -t stephenneal/python-flask:3.7-slim "${DIR}"/3.7-slim/
docker build -t stephenneal/python-flask:3.7-slim-buster "${DIR}"/3.7-slim-buster/
docker build -t stephenneal/python-flask:3.7-slim-stretch "${DIR}"/3.7-slim-stretch/
docker build -t stephenneal/python-flask:3.7-slim-v2 "${DIR}"/3.7-slim-v2/
docker build -t stephenneal/python-flask:3.7-stretch "${DIR}"/3.7-stretch/
docker build -t stephenneal/python-flask:3.8-slim "${DIR}"/3.8-slim/