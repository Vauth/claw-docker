FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Vauth/test-project.git /app

WORKDIR /app

RUN chmod -R 777 claw.sh

CMD ["bash", "claw.sh"]
