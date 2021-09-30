#! /usr/bin/env bash

# this bash script installs singularity assuming we are on a ubuntu/debian based OS

SINGULARITY_VERSION=3.8.0
GO_VERSION=1.17.1
OS=linux
ARCH=amd64

# install dependencies with apt
sudo apt-get update && sudo apt-get install -y \
    build-essential \
    uuid-dev \
    libgpgme-dev \
    squashfs-tools \
    libseccomp-dev \
    wget \
    pkg-config \
    git \
    cryptsetup-bin

# download go
wget https://golang.org/dl/go$GO_VERSION.$OS-$ARCH.tar.gz
sudo tar -C /usr/local -xzvf go$GO_VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

# set up go environment
echo 'export GOPATH=${HOME}/go' >> ~/.bashrc
echo 'export PATH=/usr/local/go/bin:${PATH}:${GOPATH}/bin' >> ~/.bashrc
source ~/.bashrc

# download singularity
wget https://github.com/sylabs/singularity/releases/download/v$SINGULARITY_VERSION/singularity-ce-$SINGULARITY_VERSION.tar.gz
tar -xzf singularity-ce-$SINGULARITY_VERSION.tar.gz

# compile singularity
cd singularity-ce-$SINGULARITY_VERSION
./mconfig
make -C ./builddir
sudo make -C ./builddir install
