# ownCloud: Litmus

[![Build Status](https://drone.owncloud.com/api/badges/owncloud-docker/litmus/status.svg)](https://drone.owncloud.com/owncloud-docker/litmus)
[![](https://images.microbadger.com/badges/image/owncloud/litmus.svg)](https://microbadger.com/images/owncloud/litmus "Get your own image badge on microbadger.com")

This is our image for [Litmus](http://www.webdav.org/neon/litmus/) based on our [Alpine container](https://registry.hub.docker.com/u/owncloud/alpine/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/owncloud-docker/litmus/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/owncloud/litmus/tags/), these lists are always up to date.


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


## Inherited environment variables

* [owncloud/alpine](https://github.com/owncloud-docker/alpine#available-environment-variables)


## Build locally

The available versions should be already pushed to the Docker Hub, but in case you want to try a change locally you can always execute the following command to get this image built locally:

```
docker build -t owncloud/litmus:latest .
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
Copyright (c) 2018 Thomas Boerger <tboerger@owncloud.com>
```
