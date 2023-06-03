# index:
https://discuss.linuxcontainers.org/t/overview-gui-inside-containers/8767

# guide:
## Works!
lxd: 5.14 on os: ubuntu 22.04 kernel: 5.19.0-43-generic #44~22.04.1-Ubuntu on: June 3 2023
- https://blog.swwomm.com/2022/08/lxd-containers-for-wayland-gui-apps.html
  - change: `unix:/run/user/1000/wayland-1` to `unix:/run/user/1000/wayland-1`

with modifications:
- https://blog.simos.info/running-x11-software-in-lxd-containers/

# Source:
- https://gist.github.com/stueja/447bd3bc0d510a0a7e50f9f1ef58ad75
- https://github.com/bitsandsalsa/lxd_gui_container

# sch:
- https://www.google.com/search?q=lxd+gui+app

# Wayland:
- https://discuss.linuxcontainers.org/t/howto-use-the-hosts-wayland-and-xwayland-servers-inside-containers/8765

# Try
- 2022 https://dev.to/amabe_dev/how-to-run-gui-apps-in-lxd-containers-882

## gpu.profile:
https://discuss.linuxcontainers.org/t/cannot-start-lxc-containers-with-gui-profile/14497


# doc:
- https://linuxcontainers.org/lxd/docs/master/instances/#type-gpu
- https://www.funtoo.org/LXD/GPU_Acceleration
