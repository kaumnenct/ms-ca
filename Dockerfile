FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

RUN cd /tmp

RUN wget http://makoserver.net/download/mako.linux-x64.tar.gz

RUN tar xvzf mako.linux-x64.tar.gz

RUN cp mako mako.zip /usr/bin

RUN useradd -G daemon -m -s /bin/bash mako

RUN cd /etc/init.d/

RUN wget http://makoserver.net/download/scripts/mako.sh

RUN chmod +x mako.sh

RUN cd /

EXPOSE 80

CMD mako -l::tutorial/DownloadTutorials.zip
