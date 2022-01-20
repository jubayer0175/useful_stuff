### This page contains  tons of commands, scripts, code snippets and notes that I found useful at some point in my PhD. It is kind of a note to myself that saved (and will save) a lot of web searching. 


## Tar commands 
- Lists files in tar archive ```tar -tr <filename.tar.gz>```
- untar  ```tar -xf <filename.tar.gz>``` you want to extract it in another folder that is not you current folder use  ```tar -xf <filename.tar.gz> -C <directoy to export files to>``` 
- tar a file ```tar -cf <archive name.tar.gz>  <list of files you want to archive>```


## VIM setup
- git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
- sh ~/.vim_runtime/install_awesome_vimrc.sh
- vim ~/.vimrc
- insert ```set number``` and ```set relativenumbe```

## Shells/BASH 
 #### Clipboard copy from commadn line
 - install this tool: ```sudo apt-get install xsel```
 - pwd | xsel -b 
 - xsel -b
 
### Store git credentials permanently 
- Do ```git config --global credential.helper store```
- ```git clone``` or ```git pull``` any repo. This will add user name and password in ~/.gitcredential file
#### Terminal to folder (Ubuntu only)
- ```nautilus .``` to open terminal in the current folder

#### SSH
- ```sudo apt install openssh-server```
- ```sudo systemctl status ssh```

#### Zsh
I really like this shell :blue_heart 💙 
- ```sudo apt install zsh```
- ````chsh -s $(which zsh)```
- ```sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```
- ```git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions```
- ```vim  ~/.zshrc``` 
		Insert 			```plugins=(zsh-autosuggestions)``` 
	```source ~/.zshrc```

#### Alias

- alias lc="colorls"
- alias folder="nautilus"
- alias doc="cd ~/Documents"

####  FindPiD
- '''pidof firefox''
- pkill -f JLinkExe





### VIM commands
- Search and replace string ```%s/foo/bar/g``` this one changes your part of the string from foo to bar. This is case insesitive
- Copy paste: go to normal mode (Esc) and press V to select entire line or v to select a bunch of chars. y to yank (copy) c to cut. 
- P to paste
- shift +A goes to end of line and becomes in appen mode
-- So many things to learn :p

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
- convert tring to hex in python: 'abcdefg'.encode('ascii').hex()  ; this one converts the string to byte like object then the we have hex() to filter that out.
#### black box arround the plot 

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

####  minor axis tick on the left and bottom

ax.yaxis.tick_left()
ax.xaxis.tick_bottom()

plt.savefig("../graph/a_1.pdf", transparent=True)



 ```

 ### Instll opencv in anaconda. 

- ```Open the base terminal from the GUI or anyother way. ```source anaconda/bin/activate root``` should do it```
- ```pip install opencv-python```
- ```pip install opencv-contrib-python```
-  should work. If it does not do a condat forge first



- '
### Searching string (grep, awk, sed)
- grep -r "string to search" ./*
- grep Design filename -> returns lines with 'Design' in the 'filename'
- Awesome notes: [sed](https://github.com/adrianscheff/useful-sed#short-sed-tut)


### MSP432 debugging:

- Find the open openocd.cfg 
- Run ```sudo openocd```
- Run arm-none-ebai-gdb
- type target remote:55000 in the gdb prompt
- ```arm-none-eabi-gdb -iex "target remote localhost:55000"``` this will directly connect the dbugger to the target running at 55000 port.

### j-link setup.
- Download the j-link software .deb pakage from the segger website. 
- JLinkGDBServer should start GDB server



### Find usb device such as debugger
- lusb
- lsusb -vd 03eb:2141 | grep iSerial
-
###  Download flash memory in ATM devices. 
- Use '''JFlashLite''' and bin or hex file

### Upgrade python 
- ```sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev```
- Download the python you want and compile

### Searching in commandline

- ```find . -empty | xargs rm  ``` this will delete empty files from the director . (current). Also, be carefull with the idea that xargs converts stdout to arguments rm. 
-  substituition commands : echo $(ls)
- find . -perm 777 this will return the files with ```rxw``` permission

### Hamming dist
	def haming_dist(new_key,key):
    '''Find hamming distance between to <int>, <int>'''
    return sum(list(map(lambda x : int(x), list(bin(new_key ^ key)[2:])))) # find the sum of ons.

### hex dumping an imgae file:
I have file named *.img genrated from compilation for rpi3. How do I see what is inside? NO need for now. .list files give you pretty code understadning


## Tmux 
- set :set -g mouse on yto enable scrolling

## Copy SSH key to server
- This allows password less entry to the remote machines
- ssh-copy-id -i ~/.ssh/id_rsa.pub jubayer@172.30.0.214 --> no, this is not my computer's ip :p

## USB enabling for UART comps such as Putty
- ```sudo chown $USER /dev/ttyUSB0 && sudo chmod a+rw /dev/ttyUSB0```

### setup vim env

- ```sudo apt-get update && sudo apt-get install -y \
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
  ```
-  ```mkdir -p ~/.local/bin && mkdir -p ~/.vim/spell \
  && ln -fs ~/dotfiles/.aliases ~/.aliases \
  && ln -fs ~/dotfiles/.bashrc ~/.bashrc \
  && ln -fs ~/dotfiles/.gemrc ~/.gemrc \
  && ln -fs ~/dotfiles/.gitconfig ~/.gitconfig \
  && ln -fs ~/dotfiles/.profile ~/.profile \
  && ln -fs ~/dotfiles/.tmux.conf ~/.tmux.conf \
  && ln -fs ~/dotfiles/.vimrc ~/.vimrc \
  && ln -fs ~/dotfiles/.vim/spell/en.utf-8.add ~/.vim/spell/en.utf-8.add \
  && ln -fs ~/dotfiles/.local/bin/set-theme ~/.local/bin/set-theme 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```
 - ```git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install```
 - ```vim .```
-  to vim ```:PlugInstall```



### Bibliography for website
- https://app.bibguru.com/p/88d86fb2-9169-4a1a-ab1d-8bc07bed5613

### Find which processor is executing the a process in linux
- ```ps -o pid,psr,comm -p <pid>``` 

### GDB
- Nice dashboard: https://github.com/cyrus-and/gdb-dashboard

### Little endian in ARM
- Instructions (openOcd or dump file) ---------------> little endian (.bin file)
31d071c0		---->				c071d031 [read left to write]

#### Delete a char from text file 
- ```tr -d '\n' < text.txt```


### Running a task in one particular CPU
- ```taskset 0x8 ./c_app```   --> runs cpu in the 4th core; this is bitmask

#### Subfigures and caption (Latex)
- Subcaption pakage is the ultimate new pakage.
\begin{figure*}
 \centering
 \begin{subfigure}{0.32\textwidth}
  \centering
  \includegraphics[scale = 0.35]{fig/dist_3.pdf}
    \caption{}
    \label{fig:zero_aged}
        

\end{subfigure}
\begin{subfigure}{0.32\textwidth}
  \centering
   \includegraphics[scale = 0.35]{fig/dist_2.pdf}
  \caption{}
       \label{fig:one_aged}

\end{subfigure}
\begin{subfigure}{0.32\textwidth}
  \centering
   \includegraphics[scale = 0.35]{fig/volatge_effect.pdf}
    \caption{}
      \label{fig:temp}
\end{subfigure}
\vspace{-0.32cm}
\caption{ Illustrates data directed aging \textbf{(a)}  when an SRAM holds logic 0 , \textbf{(b)} logic 1 during stress. (c) Illustrates accelerated aging using supply voltage and operating temperature. }
\label{fig:distr_}
\vspace{-0.20cm}
    \hrulefill
\end{figure*}

- subfig can also be used but this is depricated. 

  \begin{figure}
\centering
    \subfloat[\label{fig:system_schem}]{\includegraphics[width = 0.45\columnwidth]{fig/system_for_steg.pdf}} 
    \subfloat[\label{fig:system_schem_circuit}]{\includegraphics[width = 0.45\columnwidth]{fig/IMG_4147-min.jpg}}
    \caption{\textbf{(a)}  Schematic diagram of the evaluation setup. \textbf{(b)} Evaluation platform. The red board is an MSP432P401 launchpad and the green board is our custom control board.}
\label{system_subfigs}
\end{figure}



### Vector image coversion. 

- ```installing coverters: sudo apt install ghostscript pdf2svg```
-  ```ps2pdf test.eps```
- ```pdf2svg test.pdf foo.svg```

import that to the power point an be happy.

