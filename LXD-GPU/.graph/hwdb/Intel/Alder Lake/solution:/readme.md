solution:
- https://www.reddit.com/r/Proxmox/comments/wusi67/pass_alder_lake_qsv_through_to_lxc/
- https://www.reddit.com/r/Proxmox/comments/vv123d/i512600k_igpu_passthrough_on_unprivileged_lxc/

quote:
'''So after hours of trial and error and research I managed to get my i5-12400 iGPU passed through to a Plex LXC and confirmed HW transcoding is working, however, my container is privileged so if it doesn't work for you, you may need a privileged LXC .

Here is everything I did, some steps may not be necessary but the combination of all this worked for me:'''

source: https://github.com/fabianishere/pve-edge-kernel
