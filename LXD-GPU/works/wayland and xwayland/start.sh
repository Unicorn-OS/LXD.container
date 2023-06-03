profile(){
lxc profile create xwayland
cat wayland-and-xwayland.profile | lxc profile edit xwayland
}

start(){
lxc launch ubuntu:22.04 --profile default --profile xwayland mycontainer
}

connect(){
lxc exec xwayland -- sudo -u ubuntu -i
}

in_container(){
# prime: https://discuss.linuxcontainers.org/t/howto-use-the-hosts-wayland-and-xwayland-servers-inside-containers/8765

mkdir /run/user/1000
ln -s /mnt/wayland-socket /run/user/1000/wayland-0
mkdir /tmp/.X11-unix/
ln -s /mnt/wayland1-X2 /tmp/.X11-unix/X1

echo '''
export WAYLAND_DISPLAY=wayland-0
export XDG_RUNTIME_DIR=/run/user/1000
export DISPLAY=:1
export XSOCKET=/tmp/.X11-unix/X1
''' | tee -a .bashrc

source .bashrc
}

app(){
glxgears
geany
}
