# Dockerized Atom text editor

[![GitHub Workflow Build](https://github.com/baleyko/docker-atom/workflows/Build/badge.svg)](https://github.com/baleyko/docker-atom/actions?query=workflow%3ABuild)
[![GitHub Releases](https://img.shields.io/github/release/baleyko/docker-atom.svg)](https://github.com/baleyko/docker-atom/releases)
[![Docker Hub Image Layers](https://images.microbadger.com/badges/image/baleyko/atom.svg)](https://microbadger.com/images/baleyko/atom)
[![Docker Hub Image Tag](https://images.microbadger.com/badges/version/baleyko/atom.svg)](https://microbadger.com/images/baleyko/atom)
[![The MIT License](https://img.shields.io/badge/license-MIT-orange.svg)](http://opensource.org/licenses/MIT)

These are sources files used to build [Docker](https://www.docker.com/) image with [Atom](https://atom.io/) inside. The main goal of this image is to provide possibility to run tests during Atom packages development. The built Docker image is available on [Docker Hub](https://hub.docker.com/).

## Usage

You can build your own Docker image from these sources:

1) clone the repository
```bash
$ git clone https://github.com/baleyko/docker-atom.git
$ cd docker-atom
```

2) build an image
```bash
$ docker build -t atom:latest .
```

3) run your tests
```bash
$ docker run -it --rm  -v$PWD:/src -w/src atom:latest --test --timeout 60 test/*-spec.js
```

Either use the Docker image from the Docker Hub(current Atom version: 1.42.0):

```bash
$ docker run -it --rm  -v$PWD:/src -w/src baleyko/atom:latest --test --timeout 60 test/*-spec.js
```

## License

[MIT License](https://opensource.org/licenses/MIT) - see the [LICENSE](https://github.com/baleyko/docker-atom/blob/master/LICENSE.md) for more details.
