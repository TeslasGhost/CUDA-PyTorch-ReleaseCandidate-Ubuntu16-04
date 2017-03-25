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
6. SSH back into instance & confirm that `nvidia-smi` is *not* running  
<br>
![](images/git-cuda-nvidiasmi--notworking-blur.jpg?raw=true)
<br>
<br>
*Nouveau* is a free open source software driver for NVIDIA GPU cards. This driver will mess with the CUDA installation, so we need to remove it (namely, the *initrmfs* kernel)
<br>
<br>
7. Run `lsmod | grep nouveau` to confirm that the process is running
<br>
<br>
![](images/git-lsmod-grep.jpg?raw=true)
<br>
<br>
8. We need to create a file at location */etc/modprobe.d/blacklist-nouveau.conf*  
Run `sudo nano /etc/modprobe.d/blacklist-nouveau.conf` and add the following to the file  
<br>
![](images/nano-blacklist-nouveau.jpg?raw=true)  
<br>
9. Regenerate the *initramfs* kernel by running `sudo update-initramfs -u`  
<br>
10. Reboot the instance `sudo reboot`  
<br>
11. SSH back into instance and run `nvidia-smi`  
<br>
***NVIDIA/CUDA should be running correctly now, even after system reboot***    
<br>
12. Update the OS & Packages by running `sudo apt-get update`  
<br>
13. Reset .bashrc by running `source ~/.bashrc`  
<br>
**CUDA/NVIDIA Installation complete! :)**  
<br>
<br>



## Python

1. Run `./install-python.sh` & follow the prompts  
    * Accept `License`  
    * Say `Yes` to default install path  
    * Say `Yes` to prepend install path to .bashrc  

2. Refresh *.bashrc* by running `source ~/.bashrc`  

3. Create Conda Environment & Install Scientific Compute Dependencies  
Run `conda create -n cuda python=3.6 anaconda numpy scipy matplotlib`  
<br>
![](images/git-conda-create1.jpg?raw=true)

