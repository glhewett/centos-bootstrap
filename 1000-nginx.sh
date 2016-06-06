#!/bin/sh

yum -y install nginx
firewall-cmd --permanent --zone=public --add-service=http 
# firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
systemctl enable nginx
