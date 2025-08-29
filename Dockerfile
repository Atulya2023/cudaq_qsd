# Download base image ubuntu 20.04
FROM ubuntu:22.04

# Add metadata
LABEL maintainer="Atulya"
LABEL description="Ubuntu 22.04 w/ cudaq for Unitaryhack 2025"

# Avoid interactive prompts during installation
ARG DEBIAN_FRONTEND=noninteractive

# Update package list and install vim
RUN apt-get update \
        && apt-get clean \
        && apt-get install -y --no-install-recommends ssh \
        build-essential \
        wget \
        gcc \
        g++ \
        gdb \
        cmake \
        rsync \
        tar \
        python3 \
        python3-pip \
        zlib1g-dev \
        lsb-release software-properties-common gnupg \
        vim \
        # lldb \
        && apt-get clean

RUN apt-get install -y time \
    && apt-get clean

RUN apt-get update \
  && apt-get clean \
  && apt-get install -y --no-install-recommends less zstd libzstd-dev \
  && apt-get clean


# # Default command
CMD ["/bin/bash"]

