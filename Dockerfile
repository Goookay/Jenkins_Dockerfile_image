FROM  ubuntu:focal

WORKDIR /

COPY  Hello.cpp /

RUN apt-get update

RUN apt install -y build-essential

RUN mkdir gokay 

RUN cd gokay && mkdir DEBIAN && mkdir usr

RUN  cd gokay/usr && mkdir bin

RUN   apt-get -y update

RUN   apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin


