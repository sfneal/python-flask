#!/usr/bin/env bash

docker build -t stephenneal/python-flask:3.7 ./3.7/
docker build -t stephenneal/python-flask:3.7-alpine ./3.7-alpine/
docker build -t stephenneal/python-flask:3.7-buster ./3.7-buster/
docker build -t stephenneal/python-flask:3.7-slim ./3.7-slim/
docker build -t stephenneal/python-flask:3.7-slim-buster ./3.7-slim-buster/
docker build -t stephenneal/python-flask:3.7-slim-stretch ./3.7-slim-stretch/
docker build -t stephenneal/python-flask:3.7-slim-v2 ./3.7-slim-v2/
docker build -t stephenneal/python-flask:3.7-stretch ./3.7-stretch/