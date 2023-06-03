Works!
source: https://blog.swwomm.com/2022/08/lxd-containers-for-wayland-gui-apps.html

Steps:
- use his profile
- replace: `connect: unix:/run/user/1000/wayland-1` with `connect: unix:/run/user/1000/wayland-0`
- create profile
- launch container
- Run app inside!
