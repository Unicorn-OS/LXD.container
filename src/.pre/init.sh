# Todo: Move all this into .this! Should only use dependency.json to setup

ansible_collection(){
    name=ansible_lxc_connection
    mkdir -p ../ansible/roles/.pre
    ln -srf collection/$name ../ansible/roles/.pre/
}

dependency(){
    name=getGPU
    repo=https://github.com/Unicorn-OS/getGPU.git
    ansible_module=src/library/get_gpu.py

    mkdir -p ../ansible/library
    ln -srf dependency/$name/$ansible_module ../ansible/library/
}

git(){
    git submodule update --init --recursive
}


git
ansible_collection
dependency