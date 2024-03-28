# inspired by: https://bradleyzhou.com/posts/building-slim-uwsgi-docker-image
# uwsgi, adapted from https://github.com/docker-library/python.git
# in file python/3.6/slim/Dockerfile


# Start from base Python image
FROM python:3.12-slim
MAINTAINER Stephen Neal <stephen@stephenneal.net>

# Update OS & install dependencies
RUN set -ex \
    && buildDeps=' \
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
    ' \
    && deps=' \
        libexpat1 \
    ' \
    && apt-get update \
    && apt-get install -y $buildDeps $deps --no-install-recommends \
    && pip install uwsgi \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get purge -y --auto-remove $buildDeps \
    && find /usr/local -depth \
    \( \
        \( -type d -a -name test -o -name tests \) \
        -o \
        \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
    \) -exec rm -rf '{}' +

# Update pip & install flask & uwsgi dependencies
RUN pip3 install --upgrade pip \
	&& pip3 install \
		flask \
		flask-RESTful \
		uwsgi