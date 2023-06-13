# Todo: Move all this into .this! Should only use dependency.json to setup

setup(){
    name=getGPU
    repo=https://github.com/Unicorn-OS/getGPU.git
    ansible_module=src/library/get_gpu.py

    mkdir -p ../ansible/library
    ln -srf dependency/$name/$ansible_module ../ansible/library/
}

git submodule update --init --recursive
setup