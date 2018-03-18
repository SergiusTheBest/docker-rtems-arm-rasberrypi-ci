FROM sergiusthebest/rtems-arm-rasberrypi
MAINTAINER Sergey Podobry <sergey.podobry@gmail.com>
LABEL Description="rtems-arm-rasberrypi crosscompiler ci"

RUN apt-get update &&\
    apt-get install -y --no-install-recommends git ca-certificates cmake make &&\
    rm -rf /var/lib/apt/lists/*

ADD opt /opt
ENV CMAKE_TOOLCHAIN_FILE=/opt/cmake/rtems-toolchain.cmake
WORKDIR /opt