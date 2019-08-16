#!/usr/bin/env bash

sh ./build.sh

docker push stephenneal/python-flask:3.7
docker push stephenneal/python-flask:3.7-alpine
docker push stephenneal/python-flask:3.7-slim
docker push stephenneal/python-flask:3.7-slim-v2