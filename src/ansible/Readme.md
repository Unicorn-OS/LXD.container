# ToDo:
# Refactor 'get/vars' It's a Mess!!
- get rid of GPU.yml no-GPU.yml and make a sinble main.yml with {{ 'gpu' if condition else 'no-gpu'}}

# Fix:
Limitations:
- You have to run `uni.yml` twice to get it to install! With rebooting in between.



ToDo:
- replace .pre with .dep!
- ansible.cfg is using a full path for link. moving this folder will break the link. Convert it to relative!
make library/get_gpu.py a relative link as well!

- library/get_gpu.py Doesn't work on a KVM vm with virtio GPU yet. Add this to it! 
