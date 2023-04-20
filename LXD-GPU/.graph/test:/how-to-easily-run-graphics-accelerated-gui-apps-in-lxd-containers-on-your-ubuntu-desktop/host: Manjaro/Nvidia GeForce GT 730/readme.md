# how-to-easily-run-graphics-accelerated-gui-apps-in-lxd-containers-on-your-ubuntu-desktop
description: This guide works! Follow it exactly.

gui app.works: true
graphics acceleration.works: false

host os: Manjaro

integrated graphics: false
gpu.hw: Nvidia GeForce GT 730
cpu.hw: Intel Core i7-6700

lxd.install type: snap

lxd.version: 5.5

guest: 'ubuntu:18.04'

glxinfo.renderer: Nouveaux

guide:
- https://blog.simos.info/how-to-easily-run-graphics-accelerated-gui-apps-in-lxd-containers-on-your-ubuntu-desktop/

date: 9/05/2022

source:
```
lxc profile create gui
wget https://blog.simos.info/wp-content/uploads/2018/06/lxdguiprofile.txt
cat lxdguiprofile.txt | lxc profile edit gui
lxc launch --profile default --profile gui ubuntu:18.04 gui1804
```


