#!/bin/bash
echo "Content-type: text/html"
echo ""
pct create numberdata /var/lib/vz/template/cache/ubuntu-22.04-standard_22.04-1_amd64.tar.zst --hostname ubuntuunikport --memory 1024 --net0 name=eth0,bridge=vmbr0,firewall=1,ip=192.168.1.numberdata/24,gw=192.168.1.1 --nameserver 8.8.4.4  --searchdomain 8.8.8.8 --storage local-lvm --rootfs local-lvm:8 --features nesting=1 --unprivileged 1 --ignore-unpack-errors --ssh-public-keys /root/.ssh/authorized_keys --ostype ubuntu --password unikpass --start 1
pveum user add unikuser@pve -comment "vps xcodehoster"  
pveum acl modify /vms/numberdata -user unikuser@pve -role PVEVMAdmin 
