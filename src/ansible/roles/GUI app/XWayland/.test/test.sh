# Create & Test
start(){
    # Start Container
    ansible-playbook test.xwayland.yml --tags start
}

test(){
    # Start Container & run Xeyes in Xwayland!
    start
    ansible-playbook test.xwayland.yml --tags test
}

# Cleanup
stop(){
    ansible-playbook test.xwayland.yml --tags stop
}

delete(){
    ansible-playbook test.xwayland.yml --tags delete
}


test