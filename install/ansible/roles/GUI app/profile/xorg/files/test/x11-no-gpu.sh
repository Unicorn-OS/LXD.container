profile(){
  lxc profile create x11-no-gpu
  cat x11-no-gpu.profile | lxc profile edit x11-no-gpu
}

test(){
  lxc launch ubuntu:22.04 --profile default --profile x11-no-gpu mycontainer
  lxc exec mycontainer -- sudo -u ubuntu -i
}

run_in_container(){
  echo $DISPLAY
  sudo apt install -y geany
  geany
}
