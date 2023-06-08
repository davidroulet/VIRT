pct destroy 202 --force 1 --purge 1 --destroy-unreferenced-disks 1 2> /dev/null

pveam download local debian-11-standard_11.6-1_amd64.tar.zst
pct create 202 local:vztmpl/debian-11-standard_11.6-1_amd64.tar.zst --hostname VIRT-Att-Test --storage local-lvm --password rootroot --rootfs=2 --net0 name=eth0,bridge=vmbr5,ip=dhcp --description "Template de text"
pct start 202

pct exec 202 "apt-get upgrade -y"

pct push 202 ./Script/Script_install_att.sh /root/Script_install_att.sh
pct exec 202 bash /root/Script_install_att.sh 



pct shutdown 202 --forceStop 1
pct template 202




pct destroy 203 --force 1 --purge 1 --destroy-unreferenced-disks 1 2> /dev/null

pct create 203 local:vztmpl/debian-11-standard_11.6-1_amd64.tar.zst --hostname VIRT-Pen-Test --storage local-lvm --password rootroot --rootfs=2 --net0 name=eth0,bridge=vmbr5,ip=dhcp --description "Template de text"
pct start 203

pct exec 203 "apt-get upgrade -y"

pct push 203 ./Script/Script_install_att.sh /root/Script_install_pen.sh
pct exec 203 bash /root/Script_install_pen.sh 


pct shutdown 203 --forceStop 1
pct template 203
