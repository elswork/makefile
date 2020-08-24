# [SNAME]

A [Docker](http://docker.com) file to build [[SNAME]](https://github.com/[SNAME]).

> Be aware! You should read carefully the usage documentation of every tool!

## Details

| Website | GitHub | Docker Hub |
| --- | --- | --- |
| [[MYURL_DESCR]]([MYURL]) | [GitHub](https://github.com/[USERNAME]/[SNAME]) | [[SNAME]](https://hub.docker.com/r/[USERNAME]/[SNAME] "[USERNAME]/[SNAME] on Docker Hub") |

| Docker Pulls | Docker Stars | Size/Layers |
| --- | --- | --- |
| [![](https://img.shields.io/docker/pulls/[USERNAME]/[SNAME].svg)](https://hub.docker.com/r/[USERNAME]/[SNAME] "[SNAME] on Docker Hub") | [![](https://img.shields.io/docker/stars/[USERNAME]/[SNAME].svg)](https://hub.docker.com/r/[USERNAME]/[SNAME] "[SNAME] on Docker Hub") | [![](https://images.microbadger.com/badges/image/[USERNAME]/[SNAME].svg)](https://microbadger.com/images/[USERNAME]/[SNAME] "[SNAME] on microbadger.com") |

## Build Instructions
Build for amd64, armv7l or arm64 architecture (thanks to its [Multi-Arch](https://blog.docker.com/2017/11/multi-arch-all-the-things/) base image)

```bash
docker build -t [USERNAME]/[SNAME] .
```

## Usage Example

### Start container

```bash
docker run --rm [USERNAME]/[SNAME] \
 [PARAM]
```
or
```bash
make start PARAM=[PARAM]
```

**[Sponsor me!]([SPONSORURL]) Together we will be unstoppable.**