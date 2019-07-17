#!/usr/bin/env bash

docker build -t stephenneal/python-flask:3.7 ./3.7/
docker build -t stephenneal/python-flask:3.7-alpine ./3.7-alpine/
docker build -t stephenneal/python-flask:3.7-slim ./3.7-slim/