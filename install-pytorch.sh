#!/bin/bash

echo -e "\e[96mInstalling PyTorch"
echo -e "\e[97m"

#export conda path
CMAKE_PREFIX_PATH=/home/ubuntu/miniconda3/envs/cuda

# install optional dependencies
conda install numpy mkl setuptools cmake gcc cffi

# install optional dependencies
conda install numpy mkl setuptools cmake gcc cffi

# install python requirements
pip install -r requirements.txt
python setup.py install