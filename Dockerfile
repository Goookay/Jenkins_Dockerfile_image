FROM  ubuntu:focal

WORKDIR /

COPY  Hello.cpp /

RUN apt-get update

RUN apt install -y build-essential

RUN mkdir gokay 

RUN cd gokay && mkdir DEBIAN && mkdir usr

RUN  cd gokay/usr && mkdir bin

RUN   apt-get -y update

RUN   apt install apt-transport-https ca-certificates curl software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 

RUN  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

RUN apt-cache policy docker-ce 

RUN  apt install -y docker-ce
