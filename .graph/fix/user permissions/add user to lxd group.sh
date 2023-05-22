#from: https://stackoverflow.com/questions/54505663/error-get-http-unix-socket-1-0-dial-unix-var-snap-lxd-common-lxd-unix-socke

sudo usermod -a -G lxd $(whoami)
newgrp lxd

test(){
  /snap/bin/lxc query --wait -X GET /1.0
}
