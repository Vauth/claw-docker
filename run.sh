#!/bin/bash

# Check if GITHUB_URL environment variable is set
if [ -z "$GITHUB_URL" ]; then
    echo "Error: GITHUB_URL environment variable is not set"
    exit 1
fi

# Clone the repository
git clone "$GITHUB_URL" /app

# Change directory to the cloned repository
cd /app || exit

# Make claw.sh executable and run it
chmod -R 777 claw.sh
bash claw.sh
