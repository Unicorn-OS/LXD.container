# Create & Test
start(){
    ansible-playbook test.xwayland.yml --tags start
}

test(){
    ansible-playbook test.xwayland.yml --tags test
}

# Cleanup
stop(){
    ansible-playbook test.xwayland.yml --tags stop
}

delete(){
    ansible-playbook test.xwayland.yml --tags delete
}


start