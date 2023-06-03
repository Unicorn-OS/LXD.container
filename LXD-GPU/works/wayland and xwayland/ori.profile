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
  Waylandsocket:
    bind: container
    connect: unix:/run/user/1000/wayland-0
    gid: "1000"
    listen: unix:/mnt/wayland1/wayland-0
    mode: "0777"
    security.gid: "1000"
    security.uid: "1000"
    type: proxy
    uid: "1000"

  XWaylandsocket:
    bind: container
    connect: unix:/tmp/.X11-unix/X1
    gid: "1000"
    listen: unix:/mnt/wayland1/X1
    mode: "0777"
    security.gid: "1000"
    security.uid: "1000"
    type: proxy
    uid: "1000"

  mygpu:
    type: gpu
name: try
used_by: []
