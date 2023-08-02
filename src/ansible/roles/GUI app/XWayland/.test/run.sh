start(){
    ansible-playbook test.xwayland.yml --tags start
}

stop(){
    ansible-playbook test.xwayland.yml --tags stop
}

delete(){
    ansible-playbook test.xwayland.yml --tags delete
}


start