# inspired by: https://bradleyzhou.com/posts/building-slim-uwsgi-docker-image
# uwsgi, adapted from https://github.com/docker-library/python.git
# in file python/3.6/slim/Dockerfile


# Start from Python 3.8 Slim image
FROM python:3.12-slim
LABEL org.opencontainers.image.authors="stephen@stephenneal.net"

# Update OS & install dependencies
RUN apt-get update && \
    apt-get install -y  \
        gcc \
        libbz2-dev \
        libc6-dev \
        libgdbm-dev \
        liblzma-dev \
        libncurses-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libpcre3-dev \
        make \
        tcl-dev \
        tk-dev \
        wget \
        xz-utils \
        zlib1g-dev \
        libexpat1 \
    	python3-six \
        --no-install-recommends

# Install Python dependencies
COPY ["requirements-base.txt", "requirements.txt", "./"]
RUN pip3 install --upgrade pip \
	&& pip3 install -r ./requirements.txt \
	&& rm ./requirements.txt \
	&& rm ./requirements-base.txt