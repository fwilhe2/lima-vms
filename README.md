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
