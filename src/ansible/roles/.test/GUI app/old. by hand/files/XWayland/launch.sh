profile=xwayland-x11-no-gpu


# 1. Login to Host as "Ubuntu Wayland"!

get_initial_sockets(){
    initial=`ls /tmp/.X11-unix/`
}

start_xwayland(){
    # https://github.com/Unicorn-OS/Wayland.Knowledge/tree/main/XWayland
}

get_new_socket(){
    # Performs a Diff between before and after start_xwayland()
    new=`ls /tmp/.X11-unix/`
}