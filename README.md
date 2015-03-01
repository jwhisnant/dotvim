# Installation instructions

### Backup existing vim configs

```sh
cd $HOME
mv .vimrc vimrc-old
mv .vim dotvim-old
```

### Set 256 colors 

This can make a big difference on what a particular color scheme looks like.
Do this in the settings for your shell.  (.bashrc, for example)
```sh
export TERM=xterm-256color
```


### Clone

git clone https://github.com/jwhisnant/dotvim.git .vim

### Install submodules

```sh
cd $HOME/.vim/bundle
git submodule init
git submodule update
cd -
```

### You may need compile YCM 
See https://github.com/Valloric/YouCompleteMe for complete instructions.  The compilation for C languages seems to be not worth the source compiling to me at this point.

```sh
ycm_client_support.[so|pyd|dll] and ycm_core.[so|pyd|dll] not detected; you need to compile YCM before using it. Read the docs!
```


### Compile (Ubuntu 14.04) (non C languages)
```sh

cd $HOME/.vim/bundle/YouCompleteMe
# get third party requirements
git submodule update --init --recursive

#you may already have these installed
sudo apt-get install build-essential cmake
sudo apt-get install python-dev

 ./install.sh
 ```

 ### Create symlink to .vimrc
 ```sh
 cd $HOME
 ln -s .vim/vimrc .vimrc
 ```

