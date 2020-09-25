# Save my time
This is a repo to help my future self.


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

### SSH

- sudo apt install openssh-server
- sudo systemctl status ssh


### Zsh

- sudo apt install zsh
- chsh -s $(which zsh)
- sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
- source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
- 

### VIM commands
-- search and replace string ```%s/foo/bar/g``` this one changes your part of the string from foo to bar. This is case insesitive


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






































