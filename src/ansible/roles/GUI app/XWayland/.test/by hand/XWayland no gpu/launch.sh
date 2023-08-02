profile_name=xwayland-no-gpu0
container_name=test-$profile_name

# run on Host
# 1. Login to Host as "Ubuntu Wayland"!

get_initial_sockets(){
    # Host itself has X1 reserved
    initial=`ls /tmp/.X11-unix/`
}

start_Xwayland(0){
    # launch in GNU Screen to hide
    # https://github.com/Unicorn-OS/Wayland.Knowledge/tree/main/XWayland
    Xwayland -retro -noreset :4
}

get_new_socket(){
    # Performs a Diff between before and after start_xwayland()
    # This should be X4 for start_Xwayland(0)
    new=`ls /tmp/.X11-unix/`
}

container_launch(){
    lxc launch ubuntu:22.04 --profile default --profile $profile_name $container_name
}

container_connect(){
    lxc exec $container_name -- sudo -u ubuntu -i
}

container_install(){
    sudo apt install -y x11-apps mesa-utils
}