 Save my time
This is a repo to help my future self.
## Tar commands 
- list files in tar archive ```tar -tr <filename.tar.gz>```
- untar  ```tar -xf <filename.tar.gz>``` you want to extract it in another folder that is not you current folder use  ```tar -xf <filename.tar.gz> -C <directoy to export files to>``` 
- tar a file ```tar -cf <archive name.tar.gz>  <list of files you want to archive>```


## VIM setup
- git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
- sh ~/.vim_runtime/install_awesome_vimrc.sh
- vim ~/.vimrc
- insert ```set number``` and ```set relativenumbe```
### shell commands 
 #### clipboard copy from commadn line
 - ```sudo apt-get install xsel```
 - pwd | xsel -b 
 - xsel -b
 
### Store git credentials permanently 
- Do ```git config --global credential.helper store```
- ```git clone``` or ```git pull``` any repo. This will add user name and password in ~/.gitcredential file



## Shell commands

- nautilus . to open terminal in the current folder

### SSH

- sudo apt install openssh-server
- sudo systemctl status ssh


### Zsh

- sudo apt install zsh
- chsh -s $(which zsh)
- sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
- ```vim  ~/.zshrc``` insert plugins=(zsh-autosuggestions) . Source ~/.zshrc

### VIM commands
- search and replace string ```%s/foo/bar/g``` this one changes your part of the string from foo to bar. This is case insesitive
- Copy paste: go to normal mode (Esc) and press V to select entire line or v to select a bunch of chars. y to yank (copy) c to cut. 
- P to paste
- shift +A goes to end of line and becomes in appen mode
### python
- Plot help 

```python

import matplotlib
font = {'family' : 'sans-serif',
        'weight' : 'bold',
        'size'   : 14}

matplotlib.rc('font', **font)

- Python daily life: 
-I have a string how to convert it into byte string?
- Most complex syntax of python I wrote: a = [preaged[i] if (preaged - postaged)[i] == 0 else  (1- preaged[i]) for i in range(len(preaged))]
- Here this one checks takes the subtraction of (preaged - postaged) then checks if every elemebts if preaged and post aged are the same. if same it replaces with the preaged[i] or it replaces with ~preaged[i]
- string ''746869736973617365637265746b6579' to ascii conversion: bytearray.fromhex('746869736973617365637265746b6579').decode() ---> thisisasecretkey'

# black box arround the plot 

ax.spines['left'].set_visible(True)
ax.spines["left"].set_color("black")
ax2.spines['bottom'].set_visible(True)
ax2.spines["bottom"].set_color("black")

ax2.spines['top'].set_visible(True)
ax2.spines["top"].set_color("black")

ax.spines['top'].set_visible(True)
ax.spines["top"].set_color("black")


ax.spines['bottom'].set_visible(True)
ax.spines["bottom"].set_color("black")
ax2.spines['right'].set_visible(True)
ax2.spines["right"].set_color("black")

# minor axis tick on the left and bottom

ax.yaxis.tick_left()
ax.xaxis.tick_bottom()

plt.savefig("../graph/a_1.pdf", transparent=True)



 ```

 ### instll opencv in anaconda. 

- ```Open the base terminal from the GUI or anyother way. source anaconda/bin/activate root should do it```
- pip install opencv-python
- pip install opencv-contrib-python
- should work. If it does do a condat forge first

### Alias
- alias lc="colorls"
- alias folder="nautilus"
- alias doc="cd ~/Documents"
### FindPiD
- '''pidof firefox''
- pkill -f JLinkExe
- '
### Searching string (grep, awk, sed)
- grep -r "string to search" ./*
- grep Design filename -> returns lines with 'Design' in the 'filename'

### MSP432 debugging:

- Find the open openocd.cfg 
- Run ```sudo openocd```
- Run arm-none-ebai-gdb
- type target remote:55000 in the gdb prompt
- ```arm-none-eabi-gdb -iex "target remote localhost:55000"``` this will directly connect the dbugger to the target running at 55000 port.

### j-link setup.
- Download the j-link software .deb pakage from the segger website. 
- JLinkGDBServer should start GDB server
- 
### Find usb device such as debugger
- 
- lusb
- lsusb -vd 03eb:2141 | grep iSerial
-
-## Download flash memory in ATM devices. 
- Use '''JFlashLite''' and bin or hex file

### Upgrade python 
- sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
- Download the python you want and compilatione

### Searching in commandline

- ```find . -empty | xargs rm  ``` this will delete empty files from the director . (current). Also, be carefull with the idea that xargs converts stdout to arguments rm. 
-  substituition commands : echo $(ls)
- find . -perm 777 this will return the files with rxw permission

### Hamming dist
	def haming_dist(new_key,key):
    '''Find hamming distance between to <int>, <int>'''
    return sum(list(map(lambda x : int(x), list(bin(new_key ^ key)[2:])))) # find the sum of ons.

### hex dumping an imgae file:
I have file named *.img genrated from compilation for rpi3. How do I see what is inside? NO need for now. .list files give you pretty good understadning


## tmux 
- set :set -g mouse on yto enable scrolling

## Copy SSH key to server
- this allows password less entry to the remote machines
- ssh-copy-id -i ~/.ssh/id_rsa.pub jubayer@172.30.0.214i

## USB enabling for UART comp such as Putty
- sudo chown $USER /dev/ttyUSB0 && sudo chmod a+rw /dev/ttyUSB0

### setup vim env

- sudo apt-get update && sudo apt-get install -y \
  curl \
  git \
  gnupg \
  htop \
  jq \
  pass \
  pwgen \
  python3-pip \
  ripgrep \
  rsync \
  shellcheck \
  tmux \
  unzip \
  vim-gtk




- mkdir -p ~/.local/bin && mkdir -p ~/.vim/spell \
  && ln -fs ~/dotfiles/.aliases ~/.aliases \
  && ln -fs ~/dotfiles/.bashrc ~/.bashrc \
  && ln -fs ~/dotfiles/.gemrc ~/.gemrc \
  && ln -fs ~/dotfiles/.gitconfig ~/.gitconfig \
  && ln -fs ~/dotfiles/.profile ~/.profile \
  && ln -fs ~/dotfiles/.tmux.conf ~/.tmux.conf \
  && ln -fs ~/dotfiles/.vimrc ~/.vimrc \
  && ln -fs ~/dotfiles/.vim/spell/en.utf-8.add ~/.vim/spell/en.utf-8.add \
  && ln -fs ~/dotfiles/.local/bin/set-theme ~/.local/bin/set-theme 
-  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

 - git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
 - vim .
:PlugInstall

### Bibliography for website
- https://app.bibguru.com/p/88d86fb2-9169-4a1a-ab1d-8bc07bed5613
### Find which processor is executing the a process in linux
- ps -o pid,psr,comm -p <pid> 

### GDB
- Nice dash board: https://github.com/cyrus-and/gdb-dashboard
### Little endian in ARM
- Instructions (openOcd or dump file) ---------------> little endian (.bin file)

31d071c0						c071d031 [read ledt to write]

#### delete a char from text file 
- tr -d '\n' < text.txt


### perf
- sudo apt-get install linux-tools-common
- sudo perf_4.9 record -e cpu-clock,faults ./first


### Quemu

- sudo apt-get install qemu-system
- check 'qemu-system-aarch64 -h' 

## Installing VMs in KVM
sudo virt-install --name ubuntu-guest --os-variant ubuntu20.04 --vcpus 2 --ram 2048 --location http://ftp.ubuntu.com/ubuntu/dists/focal/main/installer-amd64/ --network bridge=virbr0, model=virtio --graphics none --extra-args='console=ttyS0,115200n8 serial'

-- Check if the harwdare supports KVM first ```kvm-ok```
-- virsh domrename centos8 nginx_centos8
-- Find ip from the host: virsh domifaddr <name of the machine> ; you can find the machines name: virsh list. 
-- Do not forget to select openssh server during installation or you will have serious trouble accessing the VM after installation.
-- delete the VM : virsh undefine <name of the VM> --remove-all-storage we have to make sure the system is turned off. If you do not care,just do virsh destroy guest1.
-- Some helpful comments https://base64.co.za/kvm-guest-hangs-at-escape-character-is-solved/