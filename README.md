# sfneal/python-flask

[![Build Status](https://travis-ci.com/sfneal/python-flask.svg?branch=master&style=flat-square)](https://travis-ci.com/sfneal/python-flask)
[![Total Downloads](https://img.shields.io/docker/pulls/stephenneal/python-flask?style=flat-square)](https://hub.docker.com/r/stephenneal/python-flask)
[![Latest Version](https://img.shields.io/docker/v/stephenneal/python-flask?sort=semver&style=flat-square)](https://hub.docker.com/r/stephenneal/python-flask)

python-flask is a python-slim based image with flask-RESTful & uWSGI dependencies installed.  Useful for running Python Flask application in multi container docker deployments. 

## Installation

Docker images can be pulled using the Docker CLI.

```bash
docker pull stephenneal/python-flask:3.9-buster
```

## Usage

```dockerfile
# Start from base Python 3.9 flask image
FROM stephenneal/python-flask:3.9-slim
LABEL maintainer="Stephen Neal <stephen@stephenneal.net>"

# Expose port 5000
EXPOSE 5000

# Set working directory
WORKDIR /var/www

# Copy nginx config and uWSGI runner
COPY ["wsgi.py", "app.ini", "logging.conf", "entrypoint.sh", "/var/www/"]

# Install dependencies
COPY requirements.txt /var/www/requirements.txt
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt
```

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

### Security

If you discover any security related issues, please email stephen.neal14@gmail.com instead of using the issue tracker.

## Credits

- [Stephen Neal](https://github.com/sfneal)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
