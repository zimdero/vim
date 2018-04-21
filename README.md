# vim
my vim config
to install my config you need to do this steps

Go to ho home directory ~
# Make sure you have installed:
  1) vim
  2) curl
  3) cmake

1) Clone my vim files </br>
   git clone git@github.com:zimdero/vim.git .vim
3) Install vim-plug on your system. </br>
   Github link. </br>
   https://github.com/junegunn/vim-plug </br>
   !! When you install vim-plug make sure it will be installed in ~/.vim/ path where you move my files
4) Make .vimrc symlink </br>
   ln -s ~/.vim/.vimrc ~/.vimrc
5) Install all packages </br>
   Open vi(vim) and type :PlugInstall
6) After installation we need to install YouCompleteMe (https://github.com/Valloric/YouCompleteMe), we have already downloaded it we need only to install localy</br>
   cd ~/.vim/plugged/YouCompleteMe/ </br>
   execute ./install.py
7) Now we need to make vimproc (https://github.com/shougo/vimproc.vim) </br>
   cd ~/.vim/plugged/vimproc.vim/ </br>
   execute make
8) Congratulations you install my vim config
