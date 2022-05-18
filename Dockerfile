FROM ubuntu:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

EXPOSE 3000

CMD echo "yes" | ./rundemo.sh
