
# x11-no-gpu.profile
- status: works!
- os: Ubuntu 22.04
- desktop environments: Gnome, LXQt
- modified from: https://blog.simos.info/running-x11-software-in-lxd-containers
- lxd version: 5.0.2
- kernel: 5.19.0-43-generic

failed:
- Ubuntu 23.04

## differences:
removed Pulse audio, & gpu device

Removed:
- environment.PULSE_SERVER: unix:/home/ubuntu/pulse-native
- nvidia.driver.capabilities: all
- nvidia.runtime: "true"
- PASocket1:
- `mygpu: type: gpu`
