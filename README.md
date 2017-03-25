# CUDA-PyTorch-ReleaseCandidate-Ubuntu16-04
Release Candidate PyTorch built from source for CUDA 8.0 on Ubuntu 16.04 for AWS GPU Instances  

## CUDA  

1. Run `sudo apt-get update && sudo apt-get upgrade`
2. Run `./install-cuda.sh` & follow the prompts
    * `Accept` License  
    * Say `Yes` for default install path  
    * Say `No` to desktop shortcuts  
    * Say `Yes` to create symbolic links  

3. Refresh bash by running `source ~/.bashrc`  
4. Check that NVIDIA CUDA installed correctly by running `nvidia-smi`  

![](images/git-cuda-nvidiasmi-blur.jpg?raw=true)  
<br>
5. Reboot system by running `sudo reboot`  
6. SSH back into instance & confirm that nvidia-smi is *not* running  
<br>
![](images/git-cuda-nvidiasmi--notworking-blur.jpg?raw=true)
<br>
*Nouveau* is a free open source software driver for NVIDIA GPU cards. This driver will mess with the CUDA installation, so we need to remove it. 



## Python

