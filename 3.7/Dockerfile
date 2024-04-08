# Start from Python 3.7 image
FROM python:3.7
MAINTAINER Stephen Neal <stephen@stephenneal.net>

# Updating operating system and install nginx
RUN apt-get update

# Update pip
RUN pip3 install --upgrade pip

# Install Python dependencies
COPY ./requirements.txt ./requirements.txt
RUN pip3 install --upgrade pip \
	&& pip3 install -r ./requirements.txt \
	&& rm ./requirements.txt