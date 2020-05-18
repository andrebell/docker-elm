# docker-elm

This is a dockerized version of [ELM](https://elm-lang.org) and some ELM tools.
The docker image contains the elm executable and [create-elm-app](https://github.com/halfzebra/create-elm-app).

## Usage

The image is available on [DockerHub](https://hub.docker.com) and can be used as a replacement for the elm executable:

```bash
$ docker run --rm -it -v `pwd`:/media -p 3000:3000 andrebell/docker-elm elm
```

## Sources

[GitHub](https://github.com/andrebell/docker-elm)
