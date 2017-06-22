#!/bin/bash
sudo yum install nano -y
sudo yum update --assumeyes
sudo cp overlay.conf /etc/modules-load.d/overlay.conf
sudo cp docker.repo /etc/yum.repos.d/docker.repo
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo cp override.conf /etc/systemd/system/docker.service.d/override.conf
sudo yum install -y docker-engine-1.13.1 docker-engine-selinux-1.13.1
sudo systemctl start docker
sudo systemctl enable docker
sudo docker ps
sudo systemctl stop firewalld && sudo systemctl disable firewalld
cat sudoers >> /etc/sudoers
sudo timedatectl set-timezone Asia/Jakarta
sudo yum install ntp -y
sudo systemctl start ntpd
sudo systemctl enable ntpd
sudo yum install -y tar xz unzip curl ipset
sudo systemctl daemon-reload
sudo systemctl stop docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl stop firewalld && sudo systemctl disable firewalld
