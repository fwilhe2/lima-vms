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

```
limactl create --name docker docker.yaml && limactl start docker && limactl stop docker  && limactl start docker  && limactl shell docker
```

## KIND

```
limactl create --name kind kubernetes/kind.yaml && limactl start kind && limactl stop kind  && limactl start kind  && limactl shell kind
```