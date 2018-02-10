# vim
my vim config
to install my config you need to do this steps

1) Clone my vim files
   git clone git@github.com:zimdero/vim.git
2) Move my files to this path ~/.vim/
3) Install vim-plug on your system.
   Github link.
   https://github.com/junegunn/vim-plug
   !! When you install vim-plug make sure it will be installed in ~/.vim/ path where you move my files
4) Make .vimrc symlink
   sudo ln -sf ~/.vim/.vimrc ~.vimrc
5) Install all packages
   Open vi(vim) and type :PlugInstall
6) After installation we need to install YouCompleteMe (https://github.com/Valloric/YouCompleteMe)
   cd ~/.vim/plugged/YouCompleteMe/
   execute ./install.py
7) Now we need to make vimproc (https://github.com/shougo/vimproc.vim)
   cd ~/.vim/plugged/vimproc.vim/
   execute make
8) Congratulations you install my vim config
