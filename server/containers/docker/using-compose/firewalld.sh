#!/bin/sh
sudo iptables -I INPUT -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 9888 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 9889 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 9997 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 9999 -j ACCEPT
sudo apt-get install iptables-persistent
sudo service netfilter-persistent start
sudo netfilter-persistent save
