# Save my time
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
- Download the python you want and compile

### Searching in commandline

- ```find . -empty | xargs rm  ``` this will delete empty files from the director . (current). Also, be carefull with the idea that xargs converts stdout to arguments rm. 
-  substituition commands : echo $(ls)
- find . -perm 777 this will return the files with rxw permission

### Hamming dist
	def haming_dist(new_key,key):
    '''Find hamming distance between to <int>, <int>'''
    return sum(list(map(lambda x : int(x), list(bin(new_key ^ key)[2:])))) # find the sum of ons.

### hex dumping an imgae file:
I have file named *.img genrated from compilation for rpi3. How do I see what is inside? NO need for now. .list files give you pretty code understadning


## tmux 
- set :set -g mouse on yto enable scrolling

## Copy SSH key to server
- this allows password less entry to the remote machines
- ssh-copy-id -i ~/.ssh/id_rsa.pub jubayer@172.30.0.214