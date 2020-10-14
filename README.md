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

### python
- Plot help 

```python

import matplotlib
font = {'family' : 'sans-serif',
        'weight' : 'bold',
        'size'   : 14}

matplotlib.rc('font', **font)



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

### Searching string (grep, awk, sed)
- grep -r "string to search" ./*


### MSP432 debugging:

- Find the open openocd.cfg 
- Run ```sudo openocd```
- Run arm-none-ebai-gdb
- type target remote:55000 in the gdb prompt
- 
