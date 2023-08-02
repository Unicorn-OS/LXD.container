playbook=test.xwayland.yml

# Link
link(){
    ln -srf roles/GUI\ app/XWayland/.test/playbook.yml $playbook
}

# Create
start(){
    link
    # Start Container
    ansible-playbook $playbook --tags start
}

# Connect
connect(){
    ansible-playbook $playbook --tags connect
    screen -list
    screen -R connection4
}

# Test
test(){
    # Start Container & run Xeyes in Xwayland!
    start
    ansible-playbook $playbook --tags test
}

# Cleanup
stop(){
    ansible-playbook $playbook --tags stop
}

delete(){
    ansible-playbook $playbook --tags delete
}

start
test