# Start from Python 3.7 Alpine image
FROM python:3.7-alpine
MAINTAINER Stephen Neal <stephen@stephenneal.net>

# Update operating system
RUN apk update && apk add \
    build-base \
    linux-headers \
    pcre-dev

# Update pip
RUN pip3 install --upgrade pip

# Install Python dependencies
COPY ./requirements.txt ./requirements.txt
RUN pip3 install --upgrade pip \
	&& pip3 install -r ./requirements.txt \
	&& rm ./requirements.txt