# from client
ssh-keygen -f ~/ssh/$1
sshpub=cat ~/ssh/$1.pub


# On server
# /etc/ssh/sshd_config
# PermitRootLogin no
# PubkeyAuthentification yes
# PasswordAuthentification no

mkdir .ssh
echo $sshpub >> .ssh/authorized_keys
sudo systemctl restart sshd



# e.g. ssh USERNAME@serverIp -i ~/ssh/mysshkey