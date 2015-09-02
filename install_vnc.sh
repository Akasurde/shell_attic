#!/bin/bash

yum install -y tigervnc-server
cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:5.service
sed -i 's/<USER>/root/g' /etc/systemd/system/vncserver@:5.service
sed -i 's/\/home\/root/\/root/g' /etc/systemd/system/vncserver@:5.service
firewall-cmd --permanent --zone=public --add-port=5905/tcp
firewall-cmd --reload
vncserver
