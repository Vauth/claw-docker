#!/bin/bash

# Install apt packages
apt update
apt install git python3 python3-pip -y

# Clone the repository
git clone https://github.com/Vauth/test-project

# Change directory to the cloned repository
cd fastapi || exit

# Install required Python packages
bash claw.sh
