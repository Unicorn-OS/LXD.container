Works!
- https://www.cyberciti.biz/faq/how-to-install-lxd-on-debian-11-linux/

# Fix:
- error: snapd service https://unix.stackexchange.com/questions/674350/snap-code-error
- error: AppArmour https://www.linux.org/threads/solved-snap-confine-has-elevated-permissions-and-is-not-confined-but-should-be.40205/
- error: permission denied https://discuss.linuxcontainers.org/t/permission-denied-on-var-snap-lxd-common-lxd-unix-socket-everytime-snap-updates-lxd/14257


# source:
```
# install
sudo apt install snapd
sudo service snapd start
sudo snap install core
sudo snap install lxd
sudo adduser me lxd

sudo systemctl enable snapd.service
sudo systemctl start snapd.service

# Fix:
sudo systemctl enable apparmor
sudo systemctl start apparmor
sudo systemctl enable --now snapd.apparmor.service
sudo chown root:lxd /var/snap/lxd/common/lxd/unix.socket
```

```
# as sudo:
sudo -i
lxd init
exit
```

```
# Test
lxc launch ubuntu:22.04 ubuntu-22
lxc list
```