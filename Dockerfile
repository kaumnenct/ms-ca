FROM ubuntu:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

EXPOSE 80

CMD echo "yes" | ./rundemo.sh
