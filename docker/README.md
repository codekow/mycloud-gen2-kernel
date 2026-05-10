# Build with docker / podman

Run build scripts in a container.

Note: you may have to use `sudo` to run the script to have the ability to build rootfs

```sh
# start build w/ container
docker/build.sh
```

```sh
# start build containers for rootfs building

sudo docker/build.sh
```

Manually run builder

```sh
getenforce && SELINUX=':z'
which podman && alias docker=podman

docker run -it --rm \
  --name mycloud-builder \
  -v $(pwd):/build${SELINUX} \
  --privileged \
  --replace \
  localhost/mycloud-builder
```
