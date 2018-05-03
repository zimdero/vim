# My vim config
To install my config you need to do this steps

## Getting Started
These instructions will get you a copy of my vim config files, that you can use.

### Prerequisites
What things you need to install the software and how to install them </br>
Linux </br>
* vim
  ```
  sudo apt-get install vim
  ```
* curl
  ```
  sudo apt-get install curl
  ```
* cmake
  ```
  sudo apt-get install cmake
  ```
Other (no idea)

### Installing
* Clone my vim files </br>
  ```
  git clone git@github.com:zimdero/vim.git .vim
  ```
* Install vim-plug on your system. </br>
   Github link. </br>
   https://github.com/junegunn/vim-plug </br>
   **When you install vim-plug make sure it will be installed in ~/.vim/ path where you move my files**
* Make .vimrc symlink </br>
  ```
  ln -s ~/.vim/.vimrc ~/.vimrc
  ```
* Install all packages </br>
  Open vi(vim) and type
  ```
  :PlugInstall
  ```
* After installation we need to install YouCompleteMe (https://github.com/Valloric/YouCompleteMe), **we have already downloaded it we need only to install localy**</br>
   cd ~/.vim/plugged/YouCompleteMe/ and **execute** </br>
  ```
  ./install.py
  ```
* Now we need to make vimproc (https://github.com/shougo/vimproc.vim) </br>
   cd ~/.vim/plugged/vimproc.vim/ and **execute** </br>
   ```
  make
   ```
## Congratulations you install my vim config
