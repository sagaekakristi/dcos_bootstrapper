#!/bin/bash
sudo systemctl stop firewalld && sudo systemctl disable firewalld
sudo bash dcos_generate_config.sh --web -v
