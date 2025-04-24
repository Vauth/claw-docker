FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y git python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Change working directory
WORKDIR /app

# Copy runner to main directory
COPY run.sh .

# Give acccess to runner
RUN chmod -R 777 run.sh

# Start the runner
CMD ["bash", "run.sh"]
