# the {{display_num}} in `environment.DISPLAY: :4`, `devices:` and `connect: & listen:` have to all match up! This is equal to your display to start `Xwayland`` on Host

config:
  environment.DISPLAY: :4
  user.user-data: |
    #cloud-config
    runcmd:
      - 'sed -i "s/; enable-shm = yes/enable-shm = no/g" /etc/pulse/client.conf'
    packages:
      - x11-apps
      - mesa-utils
description: unaccelerated Xorg
devices:
  X4:
    bind: container
    connect: unix:@/tmp/.X11-unix/X4
    listen: unix:@/tmp/.X11-unix/X4
    security.gid: "1000"
    security.uid: "1000"
    type: proxy
name: xwayland-x11-no-gpu
used_by: []