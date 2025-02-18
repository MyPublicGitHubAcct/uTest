# Fetch ubuntu image from Docker
FROM ubuntu:24.04


# Install packages
RUN \
    apt-get update && \
    apt-get install apt-utils && \
    apt-get install -y wget && \
    apt-get install -y git && \
    apt-get install -y make && \
    apt-get install -y libtool && \
    apt-get install -y autoconf && \
    apt-get install -y automake && \
    apt-get install -y build-essential && \
    apt-get install -y python3


# Download and install cpputest
WORKDIR /opt/cpputest
RUN git clone --depth 1 --branch v4.0 https://github.com/cpputest/cpputest.git .
RUN autoreconf . -i && \
    ./configure && \
    make tdd && \
    make install 

ENV CPPUTEST_HOME=/opt/cpputest


# Download and install the ARM toolchain - https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
WORKDIR /opt/arm
RUN \
    wget -q https://developer.arm.com/-/media/Files/downloads/gnu/14.2.rel1/binrel/arm-gnu-toolchain-14.2.rel1-aarch64-arm-none-eabi.tar.xz && \
    tar -xvf *64-arm-none-eabi.tar.xz && \
    rm *64-arm-none-eabi.tar.xz && \
    ln -s /opt/arm/arm-gnu-toolchain-14.2.rel1-aarch64-arm-none-eabi /toolchain-none-eabi

ENV PATH="/toolchain-none-eabi/bin:${PATH}"


# Copy project into the Docker image
WORKDIR /

RUN mkdir /project
COPY src /project/src
COPY tests /project/tests
COPY Makefile /project/Makefile


# Execute script
ENTRYPOINT ["make", "test", "-C", "/project/"]
