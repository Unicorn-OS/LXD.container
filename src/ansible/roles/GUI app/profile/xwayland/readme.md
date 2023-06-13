# Test
**Works on Ubuntu 22.04! Try other distros and releases**

# Made by combining devices from these 2 guides:
- XWaylandsocket: https://blog.simos.info/running-x11-software-in-lxd-containers/
- wayland-socket: https://blog.swwomm.com/2022/08/lxd-containers-for-wayland-gui-apps.html
- profile layout: https://blog.simos.info/running-x11-software-in-lxd-containers/

I changed it from `X1` (root) to `X2` so I can run in Weston!

Required patch: `/mnt/wayland1/{{socket}}` to `/mnt/{{socket}}` required a flat path! as it can't make subdirectories under /mnt/
