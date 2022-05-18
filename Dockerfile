FROM ubuntu:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

CMD echo "yes" | ./rundemo.sh