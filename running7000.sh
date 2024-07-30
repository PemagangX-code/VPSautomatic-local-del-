#!/bin/bash
echo "Content-type: text/html"
echo ""
pct create 146 /var/lib/vz/template/cache/ubuntu-22.04-standard_22.04-1_amd64.tar.zst --hostname ubuntu345 --memory 1024 --net0 name=eth0,bridge=vmbr0,firewall=1,ip=192.168.1.146/24,gw=192.168.1.1 --nameserver 8.8.4.4  --searchdomain 8.8.8.8 --storage local-lvm --rootfs local-lvm:8 --features nesting=1 --unprivileged 1 --ignore-unpack-errors --ssh-public-keys /root/.ssh/authorized_keys --ostype ubuntu --password baseball --start 1
pveum user add monitor@pve -comment "vps xcodehoster"  
pveum acl modify /vms/146 -user monitor@pve -role PVEVMAdmin 
