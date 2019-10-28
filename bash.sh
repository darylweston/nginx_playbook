#!/bin/sh
amazon-linux-extras install epel -y
yum install ansible -y
yum install git -y
git clone https://github.com/darylweston/nginx_playbook.git && cd /nginx_playbook/
ansible-playbook --connection=local --inventory 127.0.0.1, nginx.yml -u root 