#from: https://ubuntu.com/lxd
snap install lxd

lxd init

lxc launch images:alpine/edge/arm64 test-alpine

lxc exec test-alpine -- /bin/sh
