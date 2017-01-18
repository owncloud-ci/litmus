# ownCloud: Litmus

[![](https://images.microbadger.com/badges/image/owncloud/litus.svg)](https://microbadger.com/images/owncloud/litmus "Get your own image badge on microbadger.com")

This is our minimal image for [Litmus](http://www.webdav.org/neon/litmus/) based on our [Ubuntu container](https://registry.hub.docker.com/u/owncloud/ubuntu/).


## Usage

```bash
docker run -ti \
  --name ubuntu \
  owncloud/litmus:latest
```


## Build locally

The available versions should be already pushed to the Docker Hub, but in case you want to try a change locally you can always execute the follwiing command to get this image built locally:

```
IMAGE_NAME=owncloud/litmus ./hooks/build
```


## Versions

* [latest](https://github.com/owncloud-docker/litmus/tree/master) available as ```owncloud/litmus:latest``` at [Docker Hub](https://registry.hub.docker.com/u/owncloud/litmus/)


## Volumes

* None


## Ports

* None


## Available environment variables

```
LITMUS_URL
LITMUS_USERNAME
LITMUS_PASSWORD
LITMUS_TIMEOUT 3600
LITMUS_WAIT false
```


## Issues, Feedback and Ideas

Open an [Issue](https://github.com/owncloud-docker/litmus/issues)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Thomas Mueller](https://github.com/DeepDiver1975)


## License

MIT


## Copyright

```
Copyright (c) 2017 Thomas Boerger <tboerger@owncloud.com>
```
