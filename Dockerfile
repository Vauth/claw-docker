FROM ubuntu:latest

WORKDIR /app

COPY run.sh .

WORKDIR /app

RUN chmod -R 777 run.sh

CMD ["bash", "run.sh"]
