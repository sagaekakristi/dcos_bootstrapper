#!/bin/bash
chmod 755 ~/.ssh
cat id_rsa.pub >> ~/.ssh/authorized_keys
chmod 644 ~/.ssh/authorized_keys