url="https://github.com/Unicorn-OS/Snapcraft.git"
package="Snapcraft"
role="Snapcraft"


link_dependency(){
  dir=".dependency"
  ansible_dir="ansible/roles/.dependency"
  cd ..
  mkdir $ansible_dir
  ln -srf $dir/$package/ansible/roles/$role ansible/roles/.dependency/
}

main(){
  link_dependency
}

main
