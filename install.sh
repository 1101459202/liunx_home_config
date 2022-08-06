#! /bin/bash

sudo apt -y update
sudo apt -y install gcc
sudo apt -y install g++
sudo apt -y install git
sudo apt -y install gdb
sudo apt -y install build-essential
sudo apt -y install cmake
sudo apt -y install vim-nox
sudo apt -y install python-dev
sudo apt -y install python3-dev
sudo apt -y install golang
sudo apt -y install nodejs
sudo apt -y install default-jdk
sudo apt -y install npm
sudo apt -y install mono-complete
sudo apt -y install clang
sudo  apt-get -y  install  language-pack-zh-hans language-pack-zh-hans-base
sudo apt -y install curl
sudo apt-get -y install manpages-posix manpages-posix-dev
sudo apt-get -y install -y nfs-kernel-server
sudo apt-get -y install tftpd 
sudo apt-get -y install tftp
sudo apt-get -y install xinetd
sudo apt-get -y install lib32z1
sudo apt -y install minicom
sudo apt-get -y  install libgtk2.0-0:i386 libsm6:i386
sudo add-apt-repository ppa:rock-core/qt4
sudo apt install -y libqtwebkit4
sudo apt -y install gcc-arm-linux-gnueabihf
sudo apt -y install bison flex
sudo apt-get -y install gcc-arm-linux-gnueabihf
sudo apt-get -y install g++-arm-linux-gnueabihf
sudo apt-get -y install u-boot-tools
sudo apt -y install docker.io
sudo apt-get -y install samba samba-common
sudo apt-get -y install gparted
sudo apt -y install net-tools
sudo apt-get -y install lzop
sudo usermod -aG docker $USER
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://yruato3a.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

mkdir -p /Documents
mkdir -p /data/nfs
wait
echo "install done......."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh

