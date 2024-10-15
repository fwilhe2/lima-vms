# LIMA vm templates

See [github.com/lima-vm/lima](https://github.com/lima-vm/lima) for details on lima.

Files in this repo are based on [examples](https://github.com/lima-vm/lima/tree/master/examples)

```
# Pick distro
LIMA_DISTRO=debian
LIMA_DISTRO=fedora
LIMA_DISTRO=almalinux
LIMA_DISTRO=centos

# Create VM from template on github
limactl create --name=$LIMA_DISTRO-vm https://raw.githubusercontent.com/fwilhe2/lima-vms/main/$LIMA_DISTRO.yaml

# Create VM from local template
cat $LIMA_DISTRO.yaml | limactl create --name=$LIMA_DISTRO-vm -
```


## Docker

Reboot the instance once to make sure the user can run docker without sudo

### Docker CE (from docker's repos)

```
limactl create --name docker-ce container/docker-ce.yaml && limactl start docker-ce && limactl stop docker-ce  && limactl start docker-ce  && limactl shell docker-ce
```

### Docker.io (from debian's repos)

```
limactl create --name docker-io container/docker-io.yaml && limactl start docker-io && limactl stop docker-io  && limactl start docker-io  && limactl shell docker-io
```

## KIND

```
limactl create --name kind kubernetes/kind.yaml && limactl start kind && limactl stop kind  && limactl start kind  && limactl shell kind
```