FROM ubuntu:focal

WORKDIR /
COPY Hello.cpp /
RUN apt-get update
RUN apt install -y build-essential docker.io make