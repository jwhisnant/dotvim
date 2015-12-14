# Installation instructions

### Backup existing vim configs

```sh
cd $HOME
mv .vimrc vimrc-old
mv .vim dotvim-old
```

### Set terminal to 256 colors 

This can make a big difference on what a particular color scheme looks like.
Do this in the settings for your shell.  (.bashrc, for example)

```sh
export TERM=xterm-256color
# or export TERM=screen-256color
```

### Clone repository
`$ git clone https://github.com/jwhisnant/dotvim.git $HOME/.vim`

### Install [Vundle]

Detailed instructions are here:
But briefly 
```sh
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### Create a symlink to .vimrc
```sh
cd $HOME
ln -s .vim/vimrc .vimrc
```

### Install linters and other python tools for your OS

These instructions are written for Ubuntu, your mileage may vary.

```sh
$ sudo apt-get install pip virtualenv virtualenvwrapper
$ sudo apt-get install pylint pep8
```

### Create a custom.vim and put it in autoload

Either create a custom.vim file and put it in .vim/autoload
directory or comment them from this .vimrc.

### (Optional) You may need (or want) compile You Complete ME
See [YCM] for complete instructions.  The compilation for C languages seems to be not worth the source compiling to me at this point.

```sh
ycm_client_support.[so|pyd|dll] and ycm_core.[so|pyd|dll] not detected; you need to compile YCM before using it. Read the docs!
```

### Compile (Ubuntu 14.04) (non C languages)

#You may already have these installed.
```sh
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
```
#install without C support
`$ cd $HOME/.vim/bundle/YouCompleteMe ; ./install.sh`


[Vundle]:http://github.com/gmarik/Vundle.vim
[YCM]:https://github.com/Valloric/YouCompleteMe
