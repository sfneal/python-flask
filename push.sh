#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sh "${DIR}"/build.sh

docker push stephenneal/python-flask:3.7
docker push stephenneal/python-flask:3.7-alpine
docker push stephenneal/python-flask:3.7-buster
docker push stephenneal/python-flask:3.7-slim
docker push stephenneal/python-flask:3.7-slim-buster
docker push stephenneal/python-flask:3.7-slim-stretch
docker push stephenneal/python-flask:3.7-slim-v2
docker push stephenneal/python-flask:3.7-stretch
docker push stephenneal/python-flask:3.8-slim
docker push stephenneal/python-flask:3.9-rc-buster