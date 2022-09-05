FROM  ubuntu:focal

WORKDIR /

COPY  Hello.cpp /

RUN apt-get update

RUN apt install -y build-essential

RUN mkdir gokay 

RUN cd gokay && mkdir DEBIAN && mkdir usr

RUN  cd gokay/usr && mkdir bin

