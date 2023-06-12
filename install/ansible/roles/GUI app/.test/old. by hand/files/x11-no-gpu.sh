launch(){
  lxc launch ubuntu:22.04 --profile default --profile x11-no-gpu mycontainer
}

test(){
  lxc exec mycontainer -- xeyes
  lxc exec mycontainer -- xclock
}

connect(){
  lxc exec mycontainer -- sudo -u ubuntu -i
}
