#!/bin/bash

echo -e "\e[96mInstalling PyTorch"
echo -e "\e[97m"

#export conda path
CMAKE_PREFIX_PATH=/home/ubuntu/miniconda3/envs/cuda

# install optional dependencies
conda install numpy mkl setuptools cmake gcc cffi

# lapack support
conda install -c soumith magma-cuda80

# download pytorch source
git clone https://github.com/pytorch/pytorch.git
cd pytorch

# install python requirements
pip install -r requirements.txt
python setup.py install