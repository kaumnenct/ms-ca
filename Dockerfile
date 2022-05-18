FROM ubuntu:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

EXPOSE 3000 80 443

CMD echo "yes" | ./rundemo.sh
