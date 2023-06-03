Modified from:
https://blog.simos.info/running-x11-software-in-lxd-containers/

# Removed:
- environment.PULSE_SERVER: unix:/home/ubuntu/pulse-native
- nvidia.driver.capabilities: all
- nvidia.runtime: "true"
- PASocket1:
- `mygpu: type: gpu`
