FROM ubuntu:latest

LABEL maintainer="ronaldppinho@gmail.com" version="0.9" description="This is an Ubuntu based image \
This image was created to build C/C++ projects using gcc and cmake."

RUN apt-get update -y &&\
    apt-get install -y build-essential autoconf pkg-config libtool curl wget git

# Download version 3.16.6 of CMAKE and unpack it
RUN wget -c https://github.com/Kitware/CMake/releases/download/v3.16.6/cmake-3.16.6-Linux-x86_64.tar.gz -O cmake.tar.gz

# Unpack cmake and copy to /usr
RUN tar xf cmake.tar.gz &&\
    cp -r cmake-3.16.6-Linux-x86_64/* /usr/ &&\
    rm -r cmake.tar.gz cmake-3.16.6-Linux-x86_64
