#!/bin/bash
set -e  # Exit on error

# 1. Install modules like this
apt update
apt install -y vim wget

# 2. If you want run script as user, you can do like this
su $USER -c "./as_user.sh"

