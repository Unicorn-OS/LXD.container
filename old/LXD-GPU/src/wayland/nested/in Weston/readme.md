Works!
source: https://blog.swwomm.com/2022/08/lxd-containers-for-wayland-gui-apps.html

Steps:
- Launch Weston
- Use his profile exactly as is: `connect: unix:/run/user/1000/wayland-1`
- launch container
- run app inside, It will show up in Weston window!

Many other nested Waylands possible!
