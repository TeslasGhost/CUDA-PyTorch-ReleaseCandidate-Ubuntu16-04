#!/bin/bash

echo -e "\e[96mUpdating System"
echo -e "\e[97m"
sudo apt-get update
sudo apt-get install fluidsynth
sudo apt-get install python3 python3-dev python3-pip

echo -e "\e[96mDownloading MiniConda3"
echo -e "\e[97m"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O conda_install.sh
chmod +x conda_install.sh

echo -e "\e[96mInstalling MiniConda3"
echo -e "\e[97m"
bash conda_install.sh
