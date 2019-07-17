# Start from Python 3.7 Alpine image
FROM python:3.7-alpine
LABEL maintainer="Stephen Neal <stephen@stephenneal.net>"

# Update operating system
RUN apk update && apk add build-base linux-headers pcre-dev

# Update pip
RUN pip3 install --upgrade pip

# Install flask & uwsgi dependencies
RUN pip3 install uwsgi flask flask-RESTful