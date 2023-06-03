# Modified from: https://blog.simos.info/running-x11-software-in-lxd-containers
# removed the Pulse audio, & gpu device.
# works!
# lxd version: 5.0.2
# os: Ubuntu 22.04
# kernel: 5.19.0-43-generic
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
  X0:
    bind: container
    connect: unix:@/tmp/.X11-unix/X1
    listen: unix:@/tmp/.X11-unix/X0
    security.gid: "1000"
    security.uid: "1000"
    type: proxy
name: x11
used_by: []
