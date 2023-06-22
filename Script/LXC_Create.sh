
for i in $(seq 1 $1)
do
vmid=$(($i + 210))
pct clone 202 $vmid --full 0 --hostname "VM-Attack-$vmid" --description "Clone form the 204" 2> /dev/null
pct start $vmid 
done

for i in $(seq 1 $1)
do
vmid=$(($i + 250))
attid=$(($i+210))
attip=$(pct exec $attid ip a s dev eth0 | sed -n '/inet / s/\// /p' | awk '{print $2}')

pct clone 203 $vmid --full 0 --hostname "VM-pentest-$vmid" --description "Clone form the 201" 2> /dev/null
pct start $vmid 
sleep 10 

pct exec $vmid -- iptables -F
pct exec $vmid -- iptables -A INPUT -s $attip -p icmp --icmp-type echo-request -j ACCEPT
pct exec $vmid -- iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
pct exec $vmid -- netfilter-persistent save
done


sleep 10

echo "Voici les ip des machines"
echo "Voici les info de connextion   username: root Password: rootroot"
for i in $(seq 1 $1)
do
vmidpen=$(($i + 250))
vmidatt=$(($i + 210))
echo "-------------------------------------------------------------"
echo "instance $i"
echo "ip de la vm pen VM-pentest-$vmidpen"
pct exec $vmidpen ip a s dev eth0 | sed -n '/inet / s/\// /p' | awk '{print $2}'
echo "------------"
echo "ip de la vm att VM-Attack-$vmidatt"
pct exec $vmidatt ip a s dev eth0 | sed -n '/inet / s/\// /p' | awk '{print $2}'

done