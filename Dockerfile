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

RUN wget http://makoserver.net/download/tutorials.zip

RUN mkdir tutorials

RUN apt-get update && apt-get install -y unzip

RUN unzip tutorials.zip -d tutorials

RUN touch mako.conf

RUN echo 'acme={\
    acceptterms=true,\
    rsa=true,\
    production=true,\
    email="aleksej.komnenovic@comtrade.com",\
    domains={"docker-swarm-apps.westeurope.cloudapp.azure.com"}\
    }' >> mako.conf

CMD mako -l::/tutorials/certmgr.zip
