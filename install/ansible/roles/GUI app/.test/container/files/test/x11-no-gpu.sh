launch(){
  lxc launch  --profile default --profile x11-no-gpu mycontainer
}

connect(){
  lxc exec mycontainer -- sudo -u ubuntu -i
}

test(){
  lxc exec mycontainer -- xeyes
  lxc exec mycontainer -- xclock
}