# myspace

This is a place for various things.

To setup environment, try to install:
0. Install Ubuntu. Update UEFI system and install correct driver through terminal if you have Nvidia.
1. linux apts: vim/gvim, screen, (zsh), anaconda, docker
2. configuration of bash/zsh, ssh, vim/gvim, git
3. other useful apps: latex, wps, vlc etc.
4. setup Nvidia DL evvironment: Install CUDA by following instructions: https://developer.nvidia.com/cuda-downloads ; Install Nvidia cnDNN

To have customized message-of-the-day on the server side:
1. install neofetch, w3m-img and Imagemagick
2. create an executable file mymotd.sh in /etc/profile.d/, and write own-defined ASCII art words and neofetch in it.
Something like:
neofetch
echo ' ... '
echo ' ... '
echo ' ... '

The files are used for theme condiguration of TeXstudio.
