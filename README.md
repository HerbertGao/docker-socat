# Minimal docker image for Socat

Images are built on top of alpine linux and tagged with alpine releases.
Not that alpine does not support `search` keyword in `/etc/resolv.conf`
so you should use FQDN instead of shortcuts.

## Usage

Instead of running socat, just run this image:

```shell
docker run --rm -it --net host herbertgao/socat <your args>
```

### Example for macOS

```shell
docker run -it --restart=always -d --name=socat -p 2375:2375 -v /var/run/docker.sock:/var/run/docker.sock herbertgao/socat TCP4-LISTEN:2375,fork,reuseaddr UNIX-CONNECT:/var/run/docker.sock
```
