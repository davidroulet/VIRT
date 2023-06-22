apt-get update -y
apt-get upgrade -y
sleep 5
apt-get install nmap netdiscover crunch lynx weevely sqlmap nano sudo cowsay -y

sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config