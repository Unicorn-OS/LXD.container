profile(){
    lxc profile create xwayland
    cat xwayland.profile | lxc profile edit xwayland
}

start(){
    lxc launch ubuntu:22.04 --profile default --profile xwayland mycontainer
}

connect(){
    lxc exec xwayland -- sudo -u ubuntu -i
}

in_container(){
    # prime: https://discuss.linuxcontainers.org/t/howto-use-the-hosts-wayland-and-xwayland-servers-inside-containers/8765

    # in `in container/files/.bac/incontainer.sh`
    source in_container.sh
}

app(){
    glxgears
    xeyes
    xclock
}
