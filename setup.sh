#!/bin/bash

# Run as root
apt update
apt install -y git vim
# Please clean cache after using apt
apt-get clean \
rm -rf /var/lib/apt/lists/*


# 2. If you want run script as user, you can do like this
su $USER -c "./as_user.sh"

