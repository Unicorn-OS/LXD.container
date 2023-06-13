# Run in Container on first boot!

mkdir /run/user/1000
ln -s /mnt/wayland-socket /run/user/1000/wayland-0
mkdir /tmp/.X11-unix/
ln -s /mnt/wayland1-X1 /tmp/.X11-unix/X1

cd ~
echo '''
export WAYLAND_DISPLAY=wayland-0
export XDG_RUNTIME_DIR=/run/user/1000
export DISPLAY=:1
export XSOCKET=/tmp/.X11-unix/X1
''' | tee -a .bashrc

source .bashrc