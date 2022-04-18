FROM python:3.10.4-slim-buster

COPY ./requirements.txt /app/requirements.txt

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && apt-get clean \
    && pip install --upgrade pip \
    && pip install --no-cache-dir --upgrade -r /app/requirements.txt

WORKDIR /app