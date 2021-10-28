#! /usr/bin/env bash

# adjust these as necessary
SINGULARITY_VERSION=3.8.0
GO_VERSION=1.17.1
OS=linux
ARCH=amd64

# this bash script installs singularity assuming we are on a ubuntu/debian based OS

# I'm bothered by being forced into system level installations, so I've tried to make
# everything that this script does as transparent as possible

# Go is installed in the user's home directory, and no binaries are copied or symlinked
# to system directories instead, the GOPATH environment variable is set to $HOME/go,
# and $HOME/go/bin is added to the path in the user's .bashrc

# the singularity Makefile seems to install lots of extras to various places,
# so I didn't want to risk breaking it by trying to prevent a system level install

# ** instead, heres list of files that the singularity Makefile seems to install:
  # INSTALL /usr/local/bin/singularity
  # INSTALL /usr/local/etc/bash_completion.d/singularity
  # INSTALL /usr/local/etc/singularity/singularity.conf
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/dhcp
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/host-local
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/static
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/bridge
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/host-device
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/ipvlan
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/loopback
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/macvlan
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/ptp
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/vlan
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/bandwidth
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/firewall
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/flannel
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/portmap
  # INSTALL CNI PLUGIN /usr/local/libexec/singularity/cni/tuning
  # INSTALL /usr/local/libexec/singularity/bin/starter
  # INSTALL /usr/local/bin/run-singularity
  # INSTALL SUID /usr/local/libexec/singularity/bin/starter-suid
  # DONE

echo "This script will install the Go language and Singularity"
read -p "Do you want to continue?[y/n] "
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "bye"
    exit 1
fi

# install dependencies with apt
echo "installing build dependencies with apt..."
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
echo "downloading go..."
wget https://golang.org/dl/go$GO_VERSION.$OS-$ARCH.tar.gz
echo "extracting archive..."
sudo tar -C $HOME -xzf go$GO_VERSION.$OS-$ARCH.tar.gz
rm go$GO_VERSION.$OS-$ARCH.tar.gz

echo "setting up go environment..."
# set up go environment
GOPATH_LINE='export GOPATH=$HOME/go'
PATH_LINE='export PATH=$GOPATH/bin:$PATH'
FILE="${HOME}/.bashrc"
grep -qF -- "$GOPATH_LINE" "$FILE" || echo "$GOPATH_LINE" >> "$FILE"
grep -qF -- "$PATH_LINE" "$FILE" || echo "$PATH_LINE" >> "$FILE"
source ~/.bashrc
go version

# download singularity
echo "downloading singularity..."
wget https://github.com/sylabs/singularity/releases/download/v$SINGULARITY_VERSION/singularity-ce-$SINGULARITY_VERSION.tar.gz
echo "extracting archive..."
tar -C $HOME -xzf singularity-ce-$SINGULARITY_VERSION.tar.gz
rm singularity-ce-$SINGULARITY_VERSION.tar.gz

# compile singularity
cd $HOME/singularity-ce-$SINGULARITY_VERSION
./mconfig
sudo make -C ./builddir
sudo make -C ./builddir install
