FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "main.py"]


FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Vauth/test-project /app

WORKDIR /app
RUN chmod +x /claw.sh
