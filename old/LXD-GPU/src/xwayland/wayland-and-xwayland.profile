# Made by combining devices from these 2 guides:
# - XWaylandsocket: https://blog.simos.info/running-x11-software-in-lxd-containers/
# - wayland-socket: https://blog.swwomm.com/2022/08/lxd-containers-for-wayland-gui-apps.html
# - profile layout: https://blog.simos.info/running-x11-software-in-lxd-containers/
# I changed it from `X1` (root) to `X2` so I can run in Weston!
# Required patch: `/mnt/wayland1/{{socket}}` to `/mnt/{{socket}}` required a flat path! as it can't make subdirectories under /mnt/

config:
  environment.DISPLAY: :0
  user.user-data: |
    #cloud-config
    runcmd:
      - 'sed -i "s/; enable-shm = yes/enable-shm = no/g" /etc/pulse/client.conf'
    packages:
      - x11-apps
      - mesa-utils
description: GUI LXD profile
devices:
  wayland-socket:
    bind: container
    connect: unix:/run/user/1000/wayland-1
    listen: unix:/mnt/wayland-socket
    uid: 1000
    gid: 1000
    type: proxy

  XWaylandsocket:
    bind: container
    connect: unix:/tmp/.X11-unix/X2
    gid: "1000"
    listen: unix:/mnt/wayland1-X2
    mode: "0777"
    security.gid: "1000"
    security.uid: "1000"
    type: proxy
    uid: "1000"

  mygpu:
    type: gpu
name: xwayland
used_by: []
