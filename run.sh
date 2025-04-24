#!/bin/bash

# Clone the repository
git clone https://github.com/Vauth/test-project

# Change directory to the cloned repository
cd test-project || exit

# Install required Python packages
chmod -R 777 claw.sh
bash claw.sh
