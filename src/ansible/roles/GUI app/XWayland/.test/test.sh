playbook=test.xwayland.yml

# Link
link(){
    ln -srf roles/GUI\ app/XWayland/.test/playbook.yml $playbook
}

# Init Host & Start Container
init(){
    link
    ansible-playbook $playbook --tags init
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
    init
    ansible-playbook $playbook --tags test
}

# Clean
stop(){
    ansible-playbook $playbook --tags stop
}

delete(){
    ansible-playbook $playbook --tags delete
}

start
test