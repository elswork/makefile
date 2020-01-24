# test

A [Docker](http://docker.com) file to build [test](https://github.com/test).

> Be aware! You should read carefully the usage documentation of every tool!

## Details

- [GitHub](https://github.com/elswork/test)
- [Deft.Work my personal blog](https://deft.work)

| Docker Hub | Docker Pulls | Docker Stars | Size/Layers |
| --- | --- | --- | --- |
| [test](https://hub.docker.com/r/elswork/test "elswork/test on Docker Hub") | [![](https://img.shields.io/docker/pulls/elswork/test.svg)](https://hub.docker.com/r/elswork/test "test on Docker Hub") | [![](https://img.shields.io/docker/stars/elswork/test.svg)](https://hub.docker.com/r/elswork/test "test on Docker Hub") | [![](https://images.microbadger.com/badges/image/elswork/test.svg)](https://microbadger.com/images/elswork/test "test on microbadger.com") |

## Build Instructions
Build for amd64, armv7l or arm64 architecture (thanks to its [Multi-Arch](https://blog.docker.com/2017/11/multi-arch-all-the-things/) base image)

```bash
docker build -t elswork/test .
```

## Usage Example

### Start container

```bash
docker run --rm elswork/test \
 https://www.theworldsworstwebsiteever.com/
```
or
```bash
make start SITE=https://www.theworldsworstwebsiteever.com/
```

**[Sponsor me!](https://github.com/sponsors/elswork) Together we will be unstoppable.**