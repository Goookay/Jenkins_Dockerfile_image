FROM  ubuntu:focal

USER root

WORKDIR /

COPY  Hello.cpp /

RUN apt-get update

RUN apt install -y build-essential