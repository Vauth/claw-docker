FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY run.sh .

WORKDIR /app

RUN chmod -R 777 run.sh

CMD ["bash", "run.sh"]
